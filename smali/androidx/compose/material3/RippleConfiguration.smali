.class public final Landroidx/compose/material3/RippleConfiguration;
.super Ljava/lang/Object;
.source "Ripple.kt"


# instance fields
.field private final color:J

.field private final rippleAlpha:Landroidx/compose/material/ripple/RippleAlpha;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(JLandroidx/compose/material/ripple/RippleAlpha;)V
    .locals 0

    .line 172
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 174
    iput-wide p1, p0, Landroidx/compose/material3/RippleConfiguration;->color:J

    .line 175
    iput-object p3, p0, Landroidx/compose/material3/RippleConfiguration;->rippleAlpha:Landroidx/compose/material/ripple/RippleAlpha;

    return-void
.end method

.method public synthetic constructor <init>(JLandroidx/compose/material/ripple/RippleAlpha;ILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x1

    if-eqz p5, :cond_0

    .line 174
    sget-object p1, Landroidx/compose/ui/graphics/Color;->Companion:Landroidx/compose/ui/graphics/Color$Companion;

    invoke-virtual {p1}, Landroidx/compose/ui/graphics/Color$Companion;->getUnspecified-0d7_KjU()J

    move-result-wide p1

    :cond_0
    and-int/lit8 p4, p4, 0x2

    const/4 p5, 0x0

    if-eqz p4, :cond_1

    move-object p3, p5

    .line 173
    :cond_1
    invoke-direct {p0, p1, p2, p3, p5}, Landroidx/compose/material3/RippleConfiguration;-><init>(JLandroidx/compose/material/ripple/RippleAlpha;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public synthetic constructor <init>(JLandroidx/compose/material/ripple/RippleAlpha;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct {p0, p1, p2, p3}, Landroidx/compose/material3/RippleConfiguration;-><init>(JLandroidx/compose/material/ripple/RippleAlpha;)V

    return-void
.end method


# virtual methods
.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 179
    :cond_0
    instance-of v1, p1, Landroidx/compose/material3/RippleConfiguration;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 181
    :cond_1
    iget-wide v3, p0, Landroidx/compose/material3/RippleConfiguration;->color:J

    check-cast p1, Landroidx/compose/material3/RippleConfiguration;

    iget-wide v5, p1, Landroidx/compose/material3/RippleConfiguration;->color:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/graphics/Color;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_2

    return v2

    .line 182
    :cond_2
    iget-object p0, p0, Landroidx/compose/material3/RippleConfiguration;->rippleAlpha:Landroidx/compose/material/ripple/RippleAlpha;

    iget-object p1, p1, Landroidx/compose/material3/RippleConfiguration;->rippleAlpha:Landroidx/compose/material/ripple/RippleAlpha;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_3

    return v2

    :cond_3
    return v0
.end method

.method public final getColor-0d7_KjU()J
    .locals 2

    .line 174
    iget-wide v0, p0, Landroidx/compose/material3/RippleConfiguration;->color:J

    return-wide v0
.end method

.method public final getRippleAlpha()Landroidx/compose/material/ripple/RippleAlpha;
    .locals 0

    .line 175
    iget-object p0, p0, Landroidx/compose/material3/RippleConfiguration;->rippleAlpha:Landroidx/compose/material/ripple/RippleAlpha;

    return-object p0
.end method

.method public hashCode()I
    .locals 2

    .line 188
    iget-wide v0, p0, Landroidx/compose/material3/RippleConfiguration;->color:J

    invoke-static {v0, v1}, Landroidx/compose/ui/graphics/Color;->hashCode-impl(J)I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 189
    iget-object p0, p0, Landroidx/compose/material3/RippleConfiguration;->rippleAlpha:Landroidx/compose/material/ripple/RippleAlpha;

    if-eqz p0, :cond_0

    invoke-virtual {p0}, Landroidx/compose/material/ripple/RippleAlpha;->hashCode()I

    move-result p0

    goto :goto_0

    :cond_0
    const/4 p0, 0x0

    :goto_0
    add-int/2addr v0, p0

    return v0
.end method

.method public toString()Ljava/lang/String;
    .locals 3

    .line 194
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "RippleConfiguration(color="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-wide v1, p0, Landroidx/compose/material3/RippleConfiguration;->color:J

    invoke-static {v1, v2}, Landroidx/compose/ui/graphics/Color;->toString-impl(J)Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const-string v1, ", rippleAlpha="

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p0, p0, Landroidx/compose/material3/RippleConfiguration;->rippleAlpha:Landroidx/compose/material/ripple/RippleAlpha;

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    const/16 p0, 0x29

    invoke-virtual {v0, p0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p0

    return-object p0
.end method
