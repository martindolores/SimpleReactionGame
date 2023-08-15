using System;
using System.Collections.Generic;
using System.Text;
using System.Threading;
using SimpleReactionMachine;

namespace SimpleReactionMachine
{
    public class SimpleReactionController : IController
    {
        //Constants
        #region CONSTANTS
        private const int MIN_TIME = 100;
        private const int MAX_TIME = 250;
        private const int GAME_TIME = 200;
        private const int GAMEOVER_TIME = 300;
        private const double TICKS = 100.0;
        #endregion

        //Properties & Instance Variables
        #region PROPERTIES & INSTANCE VARIABLES
        private State CurrentState;
        private IGui Gui { get; set; }
        private IRandom Rng { get; set; }
        private double Ticks { get; set; }
        #endregion

        //Methods
        #region METHODS
        public void Connect(IGui gui, IRandom rng)
        {
            Gui = gui;
            Rng = rng;
            Init();
        }

        public void Init()
        {
            CurrentState = new OnState(this);
        }

        public void CoinInserted()
        {
            CurrentState.CoinInserted(this);
        }

        public void GoStopPressed()
        {
            CurrentState.GoStopPressed(this);
        }

        public void Tick()
        {
            CurrentState.Tick(this);
        }

        private void SetState(State state)
        {
            CurrentState = state;
        }
        #endregion

        //State Classes
        #region STATE CLASSES
        private abstract class State
        {
            public abstract void CoinInserted(SimpleReactionController controller);
            public abstract void GoStopPressed(SimpleReactionController controller);
            public abstract void Tick(SimpleReactionController controller);
        }

        private class OnState : State
        {
            public OnState(SimpleReactionController controller)
            {
                controller.Gui.SetDisplay("Insert Coin");
            }

            public override void CoinInserted(SimpleReactionController controller)
            {
                controller.SetState(new ReadyState(controller));
            }

            public override void GoStopPressed(SimpleReactionController controller)
            {
                // do nothing
            }

            public override void Tick(SimpleReactionController controller)
            {
                // do nothing
            }
        }

        private class ReadyState : State
        {
            public ReadyState(SimpleReactionController controller)
            {
                controller.Gui.SetDisplay("Press GO!");
            }
            public override void CoinInserted(SimpleReactionController controller)
            {
                // do nothing
            }

            public override void GoStopPressed(SimpleReactionController controller)
            {
                controller.SetState(new WaitState(controller));
            }

            public override void Tick(SimpleReactionController controller)
            {
                // do nothing
            }
        }

        private class WaitState : State
        {
            private int waitTime;

            public WaitState(SimpleReactionController controller)
            {
                controller.Gui.SetDisplay("Wait...");
                controller.Ticks = 0;
                waitTime = controller.Rng.GetRandom(MIN_TIME, MAX_TIME);
            }

            public override void CoinInserted(SimpleReactionController controller)
            {
                // do nothing
            }

            public override void GoStopPressed(SimpleReactionController controller)
            {
                controller.SetState(new OnState(controller));
            }

            public override void Tick(SimpleReactionController controller)
            {
                controller.Ticks++;
                if (controller.Ticks == waitTime)
                {
                    controller.SetState(new RunningState(controller));

                }
            }
        }

        private class RunningState : State
        {
            public RunningState(SimpleReactionController controller)
            {
                controller.Gui.SetDisplay("0.00");
                controller.Ticks = 0;
            }

            public override void CoinInserted(SimpleReactionController controller)
            {
                // do nothing
            }

            public override void GoStopPressed(SimpleReactionController controller)
            {
                controller.SetState(new GameOverState(controller));
            }

            public override void Tick(SimpleReactionController controller)
            {
                controller.Ticks++;
                double time = controller.Ticks / SimpleReactionController.TICKS;
                controller.Gui.SetDisplay(time.ToString("0.00"));
                if (controller.Ticks == SimpleReactionController.GAME_TIME)
                {
                    controller.SetState(new GameOverState(controller));
                }
            }
        }

        private class GameOverState : State
        {
            public GameOverState(SimpleReactionController controller)
            {
                controller.Ticks = 0;
            }
            public override void CoinInserted(SimpleReactionController controller)
            {
                // do nothing
            }

            public override void GoStopPressed(SimpleReactionController controller)
            {
                controller.SetState(new OnState(controller));
            }

            public override void Tick(SimpleReactionController controller)
            {
                controller.Ticks++;
                if (controller.Ticks == SimpleReactionController.GAMEOVER_TIME)
                {
                    controller.SetState(new OnState(controller));
                }
            }
        }

        #endregion
    }
}