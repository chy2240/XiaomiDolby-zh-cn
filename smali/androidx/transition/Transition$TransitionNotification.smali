.class interface abstract Landroidx/transition/Transition$TransitionNotification;
.super Ljava/lang/Object;
.source "Transition.java"


# static fields
.field public static final ON_CANCEL:Landroidx/transition/Transition$TransitionNotification;

.field public static final ON_END:Landroidx/transition/Transition$TransitionNotification;

.field public static final ON_PAUSE:Landroidx/transition/Transition$TransitionNotification;

.field public static final ON_RESUME:Landroidx/transition/Transition$TransitionNotification;

.field public static final ON_START:Landroidx/transition/Transition$TransitionNotification;


# direct methods
.method public static synthetic $r8$lambda$kcAdrQxAbi3Zbad--zqmSrKWUbs(Landroidx/transition/Transition$TransitionListener;Landroidx/transition/Transition;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/transition/Transition$TransitionNotification;->lambda$static$0(Landroidx/transition/Transition$TransitionListener;Landroidx/transition/Transition;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$vS0PPzRBsBECqbPtRDoJPVgOd0Y(Landroidx/transition/Transition$TransitionListener;Landroidx/transition/Transition;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/transition/Transition$TransitionNotification;->lambda$static$1(Landroidx/transition/Transition$TransitionListener;Landroidx/transition/Transition;Z)V

    return-void
.end method

.method public static synthetic $r8$lambda$vp58gyRnHCGpuF0_VPAWJHF5ero(Landroidx/transition/Transition$TransitionListener;Landroidx/transition/Transition;Z)V
    .locals 0

    .line 0
    invoke-static {p0, p1, p2}, Landroidx/transition/Transition$TransitionNotification;->lambda$static$2(Landroidx/transition/Transition$TransitionListener;Landroidx/transition/Transition;Z)V

    return-void
.end method

.method static constructor <clinit>()V
    .locals 1

    .line 2685
    new-instance v0, Landroidx/transition/Transition$TransitionNotification$$ExternalSyntheticLambda0;

    invoke-direct {v0}, Landroidx/transition/Transition$TransitionNotification$$ExternalSyntheticLambda0;-><init>()V

    sput-object v0, Landroidx/transition/Transition$TransitionNotification;->ON_START:Landroidx/transition/Transition$TransitionNotification;

    .line 2690
    new-instance v0, Landroidx/transition/Transition$TransitionNotification$$ExternalSyntheticLambda1;

    invoke-direct {v0}, Landroidx/transition/Transition$TransitionNotification$$ExternalSyntheticLambda1;-><init>()V

    sput-object v0, Landroidx/transition/Transition$TransitionNotification;->ON_END:Landroidx/transition/Transition$TransitionNotification;

    .line 2695
    new-instance v0, Landroidx/transition/Transition$TransitionNotification$$ExternalSyntheticLambda2;

    invoke-direct {v0}, Landroidx/transition/Transition$TransitionNotification$$ExternalSyntheticLambda2;-><init>()V

    sput-object v0, Landroidx/transition/Transition$TransitionNotification;->ON_CANCEL:Landroidx/transition/Transition$TransitionNotification;

    .line 2701
    new-instance v0, Landroidx/transition/Transition$TransitionNotification$$ExternalSyntheticLambda3;

    invoke-direct {v0}, Landroidx/transition/Transition$TransitionNotification$$ExternalSyntheticLambda3;-><init>()V

    sput-object v0, Landroidx/transition/Transition$TransitionNotification;->ON_PAUSE:Landroidx/transition/Transition$TransitionNotification;

    .line 2707
    new-instance v0, Landroidx/transition/Transition$TransitionNotification$$ExternalSyntheticLambda4;

    invoke-direct {v0}, Landroidx/transition/Transition$TransitionNotification$$ExternalSyntheticLambda4;-><init>()V

    sput-object v0, Landroidx/transition/Transition$TransitionNotification;->ON_RESUME:Landroidx/transition/Transition$TransitionNotification;

    return-void
.end method

.method private static synthetic lambda$static$0(Landroidx/transition/Transition$TransitionListener;Landroidx/transition/Transition;Z)V
    .locals 0

    .line 2696
    invoke-interface {p0, p1}, Landroidx/transition/Transition$TransitionListener;->onTransitionCancel(Landroidx/transition/Transition;)V

    return-void
.end method

.method private static synthetic lambda$static$1(Landroidx/transition/Transition$TransitionListener;Landroidx/transition/Transition;Z)V
    .locals 0

    .line 2702
    invoke-interface {p0, p1}, Landroidx/transition/Transition$TransitionListener;->onTransitionPause(Landroidx/transition/Transition;)V

    return-void
.end method

.method private static synthetic lambda$static$2(Landroidx/transition/Transition$TransitionListener;Landroidx/transition/Transition;Z)V
    .locals 0

    .line 2708
    invoke-interface {p0, p1}, Landroidx/transition/Transition$TransitionListener;->onTransitionResume(Landroidx/transition/Transition;)V

    return-void
.end method


# virtual methods
.method public abstract notifyListener(Landroidx/transition/Transition$TransitionListener;Landroidx/transition/Transition;Z)V
.end method
