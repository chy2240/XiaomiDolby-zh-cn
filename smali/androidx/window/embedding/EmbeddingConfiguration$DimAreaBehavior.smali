.class public final Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;
.super Ljava/lang/Object;
.source "EmbeddingConfiguration.kt"


# static fields
.field public static final Companion:Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior$Companion;

.field public static final ON_ACTIVITY_STACK:Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;

.field public static final ON_TASK:Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;

.field public static final UNDEFINED:Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;


# instance fields
.field private final value:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;->Companion:Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior$Companion;

    .line 52
    new-instance v0, Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;-><init>(I)V

    sput-object v0, Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;->UNDEFINED:Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;

    .line 60
    new-instance v0, Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;

    const/4 v1, 0x1

    invoke-direct {v0, v1}, Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;-><init>(I)V

    sput-object v0, Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;->ON_ACTIVITY_STACK:Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;

    .line 72
    new-instance v0, Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;

    const/4 v1, 0x2

    invoke-direct {v0, v1}, Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;-><init>(I)V

    sput-object v0, Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;->ON_TASK:Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;

    return-void
.end method

.method private constructor <init>(I)V
    .locals 0

    .line 40
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput p1, p0, Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;->value:I

    return-void
.end method


# virtual methods
.method public toString()Ljava/lang/String;
    .locals 2

    .line 76
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "DimAreaBehavior="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 77
    iget p0, p0, Landroidx/window/embedding/EmbeddingConfiguration$DimAreaBehavior;->value:I

    if-eqz p0, :cond_2

    const/4 v1, 0x1

    if-eq p0, v1, :cond_1

    const/4 v1, 0x2

    if-eq p0, v1, :cond_0

    .line 81
    const-string p0, "UNKNOWN"

    goto :goto_0

    .line 80
    :cond_0
    const-string p0, "ON_TASK"

    goto :goto_0

    .line 79
    :cond_1
    const-string p0, "ON_ACTIVITY_STACK"

    goto :goto_0

    .line 78
    :cond_2
    const-string p0, "UNDEFINED"

    .line 76
    :goto_0
    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
