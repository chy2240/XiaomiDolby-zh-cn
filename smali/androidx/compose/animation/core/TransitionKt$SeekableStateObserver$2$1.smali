.class final Landroidx/compose/animation/core/TransitionKt$SeekableStateObserver$2$1;
.super Lkotlin/jvm/internal/Lambda;
.source "Transition.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Landroidx/compose/animation/core/TransitionKt$SeekableStateObserver$2$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/animation/core/TransitionKt$SeekableStateObserver$2$1;

    invoke-direct {v0}, Landroidx/compose/animation/core/TransitionKt$SeekableStateObserver$2$1;-><init>()V

    sput-object v0, Landroidx/compose/animation/core/TransitionKt$SeekableStateObserver$2$1;->INSTANCE:Landroidx/compose/animation/core/TransitionKt$SeekableStateObserver$2$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 206
    check-cast p1, Lkotlin/jvm/functions/Function0;

    invoke-virtual {p0, p1}, Landroidx/compose/animation/core/TransitionKt$SeekableStateObserver$2$1;->invoke(Lkotlin/jvm/functions/Function0;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 206
    invoke-interface {p1}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
