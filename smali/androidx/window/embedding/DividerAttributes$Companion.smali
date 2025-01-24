.class public final Landroidx/window/embedding/DividerAttributes$Companion;
.super Ljava/lang/Object;
.source "DividerAttributes.kt"


# direct methods
.method private constructor <init>()V
    .locals 0

    .line 347
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0}, Landroidx/window/embedding/DividerAttributes$Companion;-><init>()V

    return-void
.end method

.method public static final synthetic access$validateColor(Landroidx/window/embedding/DividerAttributes$Companion;I)V
    .locals 0

    .line 347
    invoke-direct {p0, p1}, Landroidx/window/embedding/DividerAttributes$Companion;->validateColor(I)V

    return-void
.end method

.method public static final synthetic access$validateWidth(Landroidx/window/embedding/DividerAttributes$Companion;I)V
    .locals 0

    .line 347
    invoke-direct {p0, p1}, Landroidx/window/embedding/DividerAttributes$Companion;->validateWidth(I)V

    return-void
.end method

.method private final alpha(I)I
    .locals 0

    .line 0
    ushr-int/lit8 p0, p1, 0x18

    return p0
.end method

.method private final validateColor(I)V
    .locals 1

    .line 444
    invoke-direct {p0, p1}, Landroidx/window/embedding/DividerAttributes$Companion;->alpha(I)I

    move-result p0

    const/16 v0, 0xff

    if-ne p0, v0, :cond_0

    return-void

    .line 445
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "Divider color must be opaque. Got: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {p1}, Ljava/lang/Integer;->toHexString(I)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 444
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1
.end method

.method private final validateWidth(I)V
    .locals 1

    const/4 p0, -0x1

    if-eq p1, p0, :cond_1

    if-ltz p1, :cond_0

    goto :goto_0

    .line 439
    :cond_0
    new-instance p0, Ljava/lang/StringBuilder;

    invoke-direct {p0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "widthDp must be greater than or equal to 0 or WIDTH_SYSTEM_DEFAULT. Got: "

    invoke-virtual {p0, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    .line 438
    new-instance p1, Ljava/lang/IllegalArgumentException;

    invoke-virtual {p0}, Ljava/lang/Object;->toString()Ljava/lang/String;

    move-result-object p0

    invoke-direct {p1, p0}, Ljava/lang/IllegalArgumentException;-><init>(Ljava/lang/String;)V

    throw p1

    :cond_1
    :goto_0
    return-void
.end method
