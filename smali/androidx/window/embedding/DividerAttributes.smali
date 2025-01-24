.class public abstract Landroidx/window/embedding/DividerAttributes;
.super Ljava/lang/Object;
.source "DividerAttributes.kt"


# static fields
.field public static final Companion:Landroidx/window/embedding/DividerAttributes$Companion;

.field public static final NO_DIVIDER:Landroidx/window/embedding/DividerAttributes;


# instance fields
.field private final color:I

.field private final widthDp:I


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/window/embedding/DividerAttributes$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/window/embedding/DividerAttributes$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/window/embedding/DividerAttributes;->Companion:Landroidx/window/embedding/DividerAttributes$Companion;

    .line 359
    new-instance v0, Landroidx/window/embedding/DividerAttributes$Companion$NO_DIVIDER$1;

    invoke-direct {v0}, Landroidx/window/embedding/DividerAttributes$Companion$NO_DIVIDER$1;-><init>()V

    sput-object v0, Landroidx/window/embedding/DividerAttributes;->NO_DIVIDER:Landroidx/window/embedding/DividerAttributes;

    return-void
.end method

.method private constructor <init>(II)V
    .locals 0

    .line 35
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 37
    iput p1, p0, Landroidx/window/embedding/DividerAttributes;->widthDp:I

    .line 38
    iput p2, p0, Landroidx/window/embedding/DividerAttributes;->color:I

    return-void
.end method

.method synthetic constructor <init>(IIILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p4, p3, 0x1

    if-eqz p4, :cond_0

    const/4 p1, -0x1

    :cond_0
    and-int/lit8 p3, p3, 0x2

    if-eqz p3, :cond_1

    const/high16 p2, -0x1000000

    .line 36
    :cond_1
    invoke-direct {p0, p1, p2}, Landroidx/window/embedding/DividerAttributes;-><init>(II)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Landroidx/window/embedding/DividerAttributes;-><init>(II)V

    return-void
.end method


# virtual methods
.method public final getColor()I
    .locals 0

    .line 38
    iget p0, p0, Landroidx/window/embedding/DividerAttributes;->color:I

    return p0
.end method

.method public final getWidthDp()I
    .locals 0

    .line 37
    iget p0, p0, Landroidx/window/embedding/DividerAttributes;->widthDp:I

    return p0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 41
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-class v1, Landroidx/window/embedding/DividerAttributes;

    invoke-virtual {v1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "{width="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v1, p0, Landroidx/window/embedding/DividerAttributes;->widthDp:I

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v1, ", color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget p0, p0, Landroidx/window/embedding/DividerAttributes;->color:I

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 p0, 0x7d

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
