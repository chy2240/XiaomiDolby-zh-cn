.class final Landroidx/compose/runtime/Recomposer$RecomposerErrorState;
.super Ljava/lang/Object;
.source "Recomposer.kt"


# instance fields
.field private final cause:Ljava/lang/Exception;

.field private final recoverable:Z


# direct methods
.method public constructor <init>(ZLjava/lang/Exception;)V
    .locals 0

    .line 418
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 419
    iput-boolean p1, p0, Landroidx/compose/runtime/Recomposer$RecomposerErrorState;->recoverable:Z

    .line 420
    iput-object p2, p0, Landroidx/compose/runtime/Recomposer$RecomposerErrorState;->cause:Ljava/lang/Exception;

    return-void
.end method


# virtual methods
.method public getCause()Ljava/lang/Exception;
    .locals 0

    .line 420
    iget-object p0, p0, Landroidx/compose/runtime/Recomposer$RecomposerErrorState;->cause:Ljava/lang/Exception;

    return-object p0
.end method
