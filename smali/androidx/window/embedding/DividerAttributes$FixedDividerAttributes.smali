.class public final Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes;
.super Landroidx/window/embedding/DividerAttributes;
.source "DividerAttributes.kt"


# direct methods
.method private constructor <init>(II)V
    .locals 1

    const/4 v0, 0x0

    .line 56
    invoke-direct {p0, p1, p2, v0}, Landroidx/window/embedding/DividerAttributes;-><init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2}, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes;-><init>(II)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 4

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 60
    :cond_0
    instance-of v1, p1, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 61
    :cond_1
    invoke-virtual {p0}, Landroidx/window/embedding/DividerAttributes;->getWidthDp()I

    move-result v1

    check-cast p1, Landroidx/window/embedding/DividerAttributes$FixedDividerAttributes;

    invoke-virtual {p1}, Landroidx/window/embedding/DividerAttributes;->getWidthDp()I

    move-result v3

    if-ne v1, v3, :cond_2

    invoke-virtual {p0}, Landroidx/window/embedding/DividerAttributes;->getColor()I

    move-result p0

    invoke-virtual {p1}, Landroidx/window/embedding/DividerAttributes;->getColor()I

    move-result p1

    if-ne p0, p1, :cond_2

    goto :goto_0

    :cond_2
    move v0, v2

    :goto_0
    return v0
.end method

.method public hashCode()I
    .locals 1

    .line 64
    invoke-virtual {p0}, Landroidx/window/embedding/DividerAttributes;->getWidthDp()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    invoke-virtual {p0}, Landroidx/window/embedding/DividerAttributes;->getColor()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method
