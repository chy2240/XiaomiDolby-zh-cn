.class public final Landroidx/compose/runtime/ProvidedValue;
.super Ljava/lang/Object;
.source "Composer.kt"


# static fields
.field public static final $stable:I = 0x8


# instance fields
.field private canOverride:Z

.field private final compositionLocal:Landroidx/compose/runtime/CompositionLocal;

.field private final compute:Lkotlin/jvm/functions/Function1;

.field private final explicitNull:Z

.field private final isDynamic:Z

.field private final mutationPolicy:Landroidx/compose/runtime/SnapshotMutationPolicy;

.field private final providedValue:Ljava/lang/Object;

.field private final state:Landroidx/compose/runtime/MutableState;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(Landroidx/compose/runtime/CompositionLocal;Ljava/lang/Object;ZLandroidx/compose/runtime/SnapshotMutationPolicy;Landroidx/compose/runtime/MutableState;Lkotlin/jvm/functions/Function1;Z)V
    .locals 0

    .line 310
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 316
    iput-object p1, p0, Landroidx/compose/runtime/ProvidedValue;->compositionLocal:Landroidx/compose/runtime/CompositionLocal;

    .line 318
    iput-boolean p3, p0, Landroidx/compose/runtime/ProvidedValue;->explicitNull:Z

    .line 319
    iput-object p4, p0, Landroidx/compose/runtime/ProvidedValue;->mutationPolicy:Landroidx/compose/runtime/SnapshotMutationPolicy;

    .line 320
    iput-object p5, p0, Landroidx/compose/runtime/ProvidedValue;->state:Landroidx/compose/runtime/MutableState;

    .line 321
    iput-object p6, p0, Landroidx/compose/runtime/ProvidedValue;->compute:Lkotlin/jvm/functions/Function1;

    .line 322
    iput-boolean p7, p0, Landroidx/compose/runtime/ProvidedValue;->isDynamic:Z

    .line 324
    iput-object p2, p0, Landroidx/compose/runtime/ProvidedValue;->providedValue:Ljava/lang/Object;

    const/4 p1, 0x1

    .line 343
    iput-boolean p1, p0, Landroidx/compose/runtime/ProvidedValue;->canOverride:Z

    return-void
.end method


# virtual methods
.method public final getCanOverride()Z
    .locals 0

    .line 343
    iget-boolean p0, p0, Landroidx/compose/runtime/ProvidedValue;->canOverride:Z

    return p0
.end method

.method public final getCompositionLocal()Landroidx/compose/runtime/CompositionLocal;
    .locals 0

    .line 316
    iget-object p0, p0, Landroidx/compose/runtime/ProvidedValue;->compositionLocal:Landroidx/compose/runtime/CompositionLocal;

    return-object p0
.end method

.method public final getCompute$runtime_release()Lkotlin/jvm/functions/Function1;
    .locals 0

    .line 321
    iget-object p0, p0, Landroidx/compose/runtime/ProvidedValue;->compute:Lkotlin/jvm/functions/Function1;

    return-object p0
.end method

.method public final getEffectiveValue$runtime_release()Ljava/lang/Object;
    .locals 1

    .line 350
    iget-boolean v0, p0, Landroidx/compose/runtime/ProvidedValue;->explicitNull:Z

    if-eqz v0, :cond_0

    const/4 p0, 0x0

    goto :goto_0

    .line 351
    :cond_0
    iget-object v0, p0, Landroidx/compose/runtime/ProvidedValue;->state:Landroidx/compose/runtime/MutableState;

    if-eqz v0, :cond_1

    invoke-interface {v0}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object p0

    goto :goto_0

    .line 352
    :cond_1
    iget-object p0, p0, Landroidx/compose/runtime/ProvidedValue;->providedValue:Ljava/lang/Object;

    if-eqz p0, :cond_2

    :goto_0
    return-object p0

    .line 353
    :cond_2
    const-string p0, "Unexpected form of a provided value"

    invoke-static {p0}, Landroidx/compose/runtime/ComposerKt;->composeRuntimeError(Ljava/lang/String;)Ljava/lang/Void;

    new-instance p0, Lkotlin/KotlinNothingValueException;

    invoke-direct {p0}, Lkotlin/KotlinNothingValueException;-><init>()V

    throw p0
.end method

.method public final getMutationPolicy$runtime_release()Landroidx/compose/runtime/SnapshotMutationPolicy;
    .locals 0

    .line 319
    iget-object p0, p0, Landroidx/compose/runtime/ProvidedValue;->mutationPolicy:Landroidx/compose/runtime/SnapshotMutationPolicy;

    return-object p0
.end method

.method public final getState$runtime_release()Landroidx/compose/runtime/MutableState;
    .locals 0

    .line 320
    iget-object p0, p0, Landroidx/compose/runtime/ProvidedValue;->state:Landroidx/compose/runtime/MutableState;

    return-object p0
.end method

.method public final getValue()Ljava/lang/Object;
    .locals 0

    .line 332
    iget-object p0, p0, Landroidx/compose/runtime/ProvidedValue;->providedValue:Ljava/lang/Object;

    return-object p0
.end method

.method public final ifNotAlreadyProvided$runtime_release()Landroidx/compose/runtime/ProvidedValue;
    .locals 1

    const/4 v0, 0x0

    .line 359
    iput-boolean v0, p0, Landroidx/compose/runtime/ProvidedValue;->canOverride:Z

    return-object p0
.end method

.method public final isDynamic$runtime_release()Z
    .locals 0

    .line 322
    iget-boolean p0, p0, Landroidx/compose/runtime/ProvidedValue;->isDynamic:Z

    return p0
.end method

.method public final isStatic$runtime_release()Z
    .locals 1

    .line 357
    iget-boolean v0, p0, Landroidx/compose/runtime/ProvidedValue;->explicitNull:Z

    if-nez v0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/runtime/ProvidedValue;->getValue()Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    :cond_0
    iget-boolean p0, p0, Landroidx/compose/runtime/ProvidedValue;->isDynamic:Z

    if-nez p0, :cond_1

    const/4 p0, 0x1

    goto :goto_0

    :cond_1
    const/4 p0, 0x0

    :goto_0
    return p0
.end method
