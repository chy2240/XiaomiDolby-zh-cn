.class public final Landroidx/compose/runtime/RememberObserverHolder;
.super Ljava/lang/Object;
.source "Composer.kt"


# instance fields
.field private after:Landroidx/compose/runtime/Anchor;

.field private wrapped:Landroidx/compose/runtime/RememberObserver;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/RememberObserver;Landroidx/compose/runtime/Anchor;)V
    .locals 0

    .line 4478
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Landroidx/compose/runtime/RememberObserverHolder;->wrapped:Landroidx/compose/runtime/RememberObserver;

    iput-object p2, p0, Landroidx/compose/runtime/RememberObserverHolder;->after:Landroidx/compose/runtime/Anchor;

    return-void
.end method


# virtual methods
.method public final getAfter()Landroidx/compose/runtime/Anchor;
    .locals 0

    .line 4478
    iget-object p0, p0, Landroidx/compose/runtime/RememberObserverHolder;->after:Landroidx/compose/runtime/Anchor;

    return-object p0
.end method

.method public final getWrapped()Landroidx/compose/runtime/RememberObserver;
    .locals 0

    .line 4478
    iget-object p0, p0, Landroidx/compose/runtime/RememberObserverHolder;->wrapped:Landroidx/compose/runtime/RememberObserver;

    return-object p0
.end method
