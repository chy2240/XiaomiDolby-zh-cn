.class public final Landroidx/compose/foundation/MagnifierElement;
.super Landroidx/compose/ui/node/ModifierNodeElement;
.source "Magnifier.android.kt"


# instance fields
.field private final clippingEnabled:Z

.field private final cornerRadius:F

.field private final elevation:F

.field private final magnifierCenter:Lkotlin/jvm/functions/Function1;

.field private final onSizeChanged:Lkotlin/jvm/functions/Function1;

.field private final platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

.field private final size:J

.field private final sourceCenter:Lkotlin/jvm/functions/Function1;

.field private final useTextDefault:Z

.field private final zoom:F


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method private constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FZJFFZLandroidx/compose/foundation/PlatformMagnifierFactory;)V
    .locals 0

    .line 169
    invoke-direct {p0}, Landroidx/compose/ui/node/ModifierNodeElement;-><init>()V

    .line 159
    iput-object p1, p0, Landroidx/compose/foundation/MagnifierElement;->sourceCenter:Lkotlin/jvm/functions/Function1;

    .line 160
    iput-object p2, p0, Landroidx/compose/foundation/MagnifierElement;->magnifierCenter:Lkotlin/jvm/functions/Function1;

    .line 161
    iput-object p3, p0, Landroidx/compose/foundation/MagnifierElement;->onSizeChanged:Lkotlin/jvm/functions/Function1;

    .line 162
    iput p4, p0, Landroidx/compose/foundation/MagnifierElement;->zoom:F

    .line 163
    iput-boolean p5, p0, Landroidx/compose/foundation/MagnifierElement;->useTextDefault:Z

    .line 164
    iput-wide p6, p0, Landroidx/compose/foundation/MagnifierElement;->size:J

    .line 165
    iput p8, p0, Landroidx/compose/foundation/MagnifierElement;->cornerRadius:F

    .line 166
    iput p9, p0, Landroidx/compose/foundation/MagnifierElement;->elevation:F

    .line 167
    iput-boolean p10, p0, Landroidx/compose/foundation/MagnifierElement;->clippingEnabled:Z

    .line 168
    iput-object p11, p0, Landroidx/compose/foundation/MagnifierElement;->platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    return-void
.end method

.method public synthetic constructor <init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FZJFFZLandroidx/compose/foundation/PlatformMagnifierFactory;Lkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    .line 0
    invoke-direct/range {p0 .. p11}, Landroidx/compose/foundation/MagnifierElement;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FZJFFZLandroidx/compose/foundation/PlatformMagnifierFactory;)V

    return-void
.end method


# virtual methods
.method public create()Landroidx/compose/foundation/MagnifierNode;
    .locals 13

    .line 173
    iget-object v1, p0, Landroidx/compose/foundation/MagnifierElement;->sourceCenter:Lkotlin/jvm/functions/Function1;

    .line 174
    iget-object v2, p0, Landroidx/compose/foundation/MagnifierElement;->magnifierCenter:Lkotlin/jvm/functions/Function1;

    .line 175
    iget v4, p0, Landroidx/compose/foundation/MagnifierElement;->zoom:F

    .line 176
    iget-boolean v5, p0, Landroidx/compose/foundation/MagnifierElement;->useTextDefault:Z

    .line 177
    iget-wide v6, p0, Landroidx/compose/foundation/MagnifierElement;->size:J

    .line 178
    iget v8, p0, Landroidx/compose/foundation/MagnifierElement;->cornerRadius:F

    .line 179
    iget v9, p0, Landroidx/compose/foundation/MagnifierElement;->elevation:F

    .line 180
    iget-boolean v10, p0, Landroidx/compose/foundation/MagnifierElement;->clippingEnabled:Z

    .line 181
    iget-object v3, p0, Landroidx/compose/foundation/MagnifierElement;->onSizeChanged:Lkotlin/jvm/functions/Function1;

    .line 182
    iget-object v11, p0, Landroidx/compose/foundation/MagnifierElement;->platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    .line 172
    new-instance p0, Landroidx/compose/foundation/MagnifierNode;

    const/4 v12, 0x0

    move-object v0, p0

    invoke-direct/range {v0 .. v12}, Landroidx/compose/foundation/MagnifierNode;-><init>(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FZJFFZLandroidx/compose/foundation/PlatformMagnifierFactory;Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-object p0
.end method

.method public bridge synthetic create()Landroidx/compose/ui/Modifier$Node;
    .locals 0

    .line 158
    invoke-virtual {p0}, Landroidx/compose/foundation/MagnifierElement;->create()Landroidx/compose/foundation/MagnifierNode;

    move-result-object p0

    return-object p0
.end method

.method public equals(Ljava/lang/Object;)Z
    .locals 7

    const/4 v0, 0x1

    if-ne p0, p1, :cond_0

    return v0

    .line 203
    :cond_0
    instance-of v1, p1, Landroidx/compose/foundation/MagnifierElement;

    const/4 v2, 0x0

    if-nez v1, :cond_1

    return v2

    .line 205
    :cond_1
    iget-object v1, p0, Landroidx/compose/foundation/MagnifierElement;->sourceCenter:Lkotlin/jvm/functions/Function1;

    check-cast p1, Landroidx/compose/foundation/MagnifierElement;

    iget-object v3, p1, Landroidx/compose/foundation/MagnifierElement;->sourceCenter:Lkotlin/jvm/functions/Function1;

    if-eq v1, v3, :cond_2

    return v2

    .line 206
    :cond_2
    iget-object v1, p0, Landroidx/compose/foundation/MagnifierElement;->magnifierCenter:Lkotlin/jvm/functions/Function1;

    iget-object v3, p1, Landroidx/compose/foundation/MagnifierElement;->magnifierCenter:Lkotlin/jvm/functions/Function1;

    if-eq v1, v3, :cond_3

    return v2

    .line 207
    :cond_3
    iget v1, p0, Landroidx/compose/foundation/MagnifierElement;->zoom:F

    iget v3, p1, Landroidx/compose/foundation/MagnifierElement;->zoom:F

    cmpg-float v1, v1, v3

    if-nez v1, :cond_b

    .line 208
    iget-boolean v1, p0, Landroidx/compose/foundation/MagnifierElement;->useTextDefault:Z

    iget-boolean v3, p1, Landroidx/compose/foundation/MagnifierElement;->useTextDefault:Z

    if-eq v1, v3, :cond_4

    return v2

    .line 209
    :cond_4
    iget-wide v3, p0, Landroidx/compose/foundation/MagnifierElement;->size:J

    iget-wide v5, p1, Landroidx/compose/foundation/MagnifierElement;->size:J

    invoke-static {v3, v4, v5, v6}, Landroidx/compose/ui/unit/DpSize;->equals-impl0(JJ)Z

    move-result v1

    if-nez v1, :cond_5

    return v2

    .line 210
    :cond_5
    iget v1, p0, Landroidx/compose/foundation/MagnifierElement;->cornerRadius:F

    iget v3, p1, Landroidx/compose/foundation/MagnifierElement;->cornerRadius:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    if-nez v1, :cond_6

    return v2

    .line 211
    :cond_6
    iget v1, p0, Landroidx/compose/foundation/MagnifierElement;->elevation:F

    iget v3, p1, Landroidx/compose/foundation/MagnifierElement;->elevation:F

    invoke-static {v1, v3}, Landroidx/compose/ui/unit/Dp;->equals-impl0(FF)Z

    move-result v1

    if-nez v1, :cond_7

    return v2

    .line 212
    :cond_7
    iget-boolean v1, p0, Landroidx/compose/foundation/MagnifierElement;->clippingEnabled:Z

    iget-boolean v3, p1, Landroidx/compose/foundation/MagnifierElement;->clippingEnabled:Z

    if-eq v1, v3, :cond_8

    return v2

    .line 213
    :cond_8
    iget-object v1, p0, Landroidx/compose/foundation/MagnifierElement;->onSizeChanged:Lkotlin/jvm/functions/Function1;

    iget-object v3, p1, Landroidx/compose/foundation/MagnifierElement;->onSizeChanged:Lkotlin/jvm/functions/Function1;

    if-eq v1, v3, :cond_9

    return v2

    .line 214
    :cond_9
    iget-object p0, p0, Landroidx/compose/foundation/MagnifierElement;->platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    iget-object p1, p1, Landroidx/compose/foundation/MagnifierElement;->platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    invoke-static {p0, p1}, Lkotlin/jvm/internal/Intrinsics;->areEqual(Ljava/lang/Object;Ljava/lang/Object;)Z

    move-result p0

    if-nez p0, :cond_a

    return v2

    :cond_a
    return v0

    :cond_b
    return v2
.end method

.method public hashCode()I
    .locals 5

    .line 220
    iget-object v0, p0, Landroidx/compose/foundation/MagnifierElement;->sourceCenter:Lkotlin/jvm/functions/Function1;

    invoke-virtual {v0}, Ljava/lang/Object;->hashCode()I

    move-result v0

    mul-int/lit8 v0, v0, 0x1f

    .line 221
    iget-object v1, p0, Landroidx/compose/foundation/MagnifierElement;->magnifierCenter:Lkotlin/jvm/functions/Function1;

    const/4 v2, 0x0

    if-eqz v1, :cond_0

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v1

    goto :goto_0

    :cond_0
    move v1, v2

    :goto_0
    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 222
    iget v1, p0, Landroidx/compose/foundation/MagnifierElement;->zoom:F

    invoke-static {v1}, Ljava/lang/Float;->hashCode(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 223
    iget-boolean v1, p0, Landroidx/compose/foundation/MagnifierElement;->useTextDefault:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 224
    iget-wide v3, p0, Landroidx/compose/foundation/MagnifierElement;->size:J

    invoke-static {v3, v4}, Landroidx/compose/ui/unit/DpSize;->hashCode-impl(J)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 225
    iget v1, p0, Landroidx/compose/foundation/MagnifierElement;->cornerRadius:F

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 226
    iget v1, p0, Landroidx/compose/foundation/MagnifierElement;->elevation:F

    invoke-static {v1}, Landroidx/compose/ui/unit/Dp;->hashCode-impl(F)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 227
    iget-boolean v1, p0, Landroidx/compose/foundation/MagnifierElement;->clippingEnabled:Z

    invoke-static {v1}, Ljava/lang/Boolean;->hashCode(Z)I

    move-result v1

    add-int/2addr v0, v1

    mul-int/lit8 v0, v0, 0x1f

    .line 228
    iget-object v1, p0, Landroidx/compose/foundation/MagnifierElement;->onSizeChanged:Lkotlin/jvm/functions/Function1;

    if-eqz v1, :cond_1

    invoke-virtual {v1}, Ljava/lang/Object;->hashCode()I

    move-result v2

    :cond_1
    add-int/2addr v0, v2

    mul-int/lit8 v0, v0, 0x1f

    .line 229
    iget-object p0, p0, Landroidx/compose/foundation/MagnifierElement;->platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    invoke-virtual {p0}, Ljava/lang/Object;->hashCode()I

    move-result p0

    add-int/2addr v0, p0

    return v0
.end method

.method public update(Landroidx/compose/foundation/MagnifierNode;)V
    .locals 12

    .line 188
    iget-object v1, p0, Landroidx/compose/foundation/MagnifierElement;->sourceCenter:Lkotlin/jvm/functions/Function1;

    .line 189
    iget-object v2, p0, Landroidx/compose/foundation/MagnifierElement;->magnifierCenter:Lkotlin/jvm/functions/Function1;

    .line 190
    iget v3, p0, Landroidx/compose/foundation/MagnifierElement;->zoom:F

    .line 191
    iget-boolean v4, p0, Landroidx/compose/foundation/MagnifierElement;->useTextDefault:Z

    .line 192
    iget-wide v5, p0, Landroidx/compose/foundation/MagnifierElement;->size:J

    .line 193
    iget v7, p0, Landroidx/compose/foundation/MagnifierElement;->cornerRadius:F

    .line 194
    iget v8, p0, Landroidx/compose/foundation/MagnifierElement;->elevation:F

    .line 195
    iget-boolean v9, p0, Landroidx/compose/foundation/MagnifierElement;->clippingEnabled:Z

    .line 196
    iget-object v10, p0, Landroidx/compose/foundation/MagnifierElement;->onSizeChanged:Lkotlin/jvm/functions/Function1;

    .line 197
    iget-object v11, p0, Landroidx/compose/foundation/MagnifierElement;->platformMagnifierFactory:Landroidx/compose/foundation/PlatformMagnifierFactory;

    move-object v0, p1

    .line 187
    invoke-virtual/range {v0 .. v11}, Landroidx/compose/foundation/MagnifierNode;->update-5F03MCQ(Lkotlin/jvm/functions/Function1;Lkotlin/jvm/functions/Function1;FZJFFZLkotlin/jvm/functions/Function1;Landroidx/compose/foundation/PlatformMagnifierFactory;)V

    return-void
.end method

.method public bridge synthetic update(Landroidx/compose/ui/Modifier$Node;)V
    .locals 0

    .line 158
    check-cast p1, Landroidx/compose/foundation/MagnifierNode;

    invoke-virtual {p0, p1}, Landroidx/compose/foundation/MagnifierElement;->update(Landroidx/compose/foundation/MagnifierNode;)V

    return-void
.end method
