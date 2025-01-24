.class final Landroidx/compose/runtime/Invalidation;
.super Ljava/lang/Object;
.source "Composer.kt"


# instance fields
.field private instances:Ljava/lang/Object;

.field private final location:I

.field private final scope:Landroidx/compose/runtime/RecomposeScopeImpl;


# direct methods
.method public constructor <init>(Landroidx/compose/runtime/RecomposeScopeImpl;ILjava/lang/Object;)V
    .locals 0

    .line 233
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 235
    iput-object p1, p0, Landroidx/compose/runtime/Invalidation;->scope:Landroidx/compose/runtime/RecomposeScopeImpl;

    .line 238
    iput p2, p0, Landroidx/compose/runtime/Invalidation;->location:I

    .line 248
    iput-object p3, p0, Landroidx/compose/runtime/Invalidation;->instances:Ljava/lang/Object;

    return-void
.end method


# virtual methods
.method public final getInstances()Ljava/lang/Object;
    .locals 0

    .line 248
    iget-object p0, p0, Landroidx/compose/runtime/Invalidation;->instances:Ljava/lang/Object;

    return-object p0
.end method

.method public final getLocation()I
    .locals 0

    .line 238
    iget p0, p0, Landroidx/compose/runtime/Invalidation;->location:I

    return p0
.end method

.method public final getScope()Landroidx/compose/runtime/RecomposeScopeImpl;
    .locals 0

    .line 235
    iget-object p0, p0, Landroidx/compose/runtime/Invalidation;->scope:Landroidx/compose/runtime/RecomposeScopeImpl;

    return-object p0
.end method

.method public final isInvalid()Z
    .locals 1

    .line 250
    iget-object v0, p0, Landroidx/compose/runtime/Invalidation;->scope:Landroidx/compose/runtime/RecomposeScopeImpl;

    iget-object p0, p0, Landroidx/compose/runtime/Invalidation;->instances:Ljava/lang/Object;

    invoke-virtual {v0, p0}, Landroidx/compose/runtime/RecomposeScopeImpl;->isInvalidFor(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final setInstances(Ljava/lang/Object;)V
    .locals 0

    .line 248
    iput-object p1, p0, Landroidx/compose/runtime/Invalidation;->instances:Ljava/lang/Object;

    return-void
.end method
