.class final Landroidx/compose/foundation/text/ValidatingOffsetMapping;
.super Ljava/lang/Object;
.source "ValidatingOffsetMapping.kt"

# interfaces
.implements Landroidx/compose/ui/text/input/OffsetMapping;


# instance fields
.field private final delegate:Landroidx/compose/ui/text/input/OffsetMapping;

.field private final originalLength:I

.field private final transformedLength:I


# direct methods
.method public constructor <init>(Landroidx/compose/ui/text/input/OffsetMapping;II)V
    .locals 0

    .line 81
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 82
    iput-object p1, p0, Landroidx/compose/foundation/text/ValidatingOffsetMapping;->delegate:Landroidx/compose/ui/text/input/OffsetMapping;

    .line 83
    iput p2, p0, Landroidx/compose/foundation/text/ValidatingOffsetMapping;->originalLength:I

    .line 84
    iput p3, p0, Landroidx/compose/foundation/text/ValidatingOffsetMapping;->transformedLength:I

    return-void
.end method


# virtual methods
.method public originalToTransformed(I)I
    .locals 2

    .line 92
    iget-object v0, p0, Landroidx/compose/foundation/text/ValidatingOffsetMapping;->delegate:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-interface {v0, p1}, Landroidx/compose/ui/text/input/OffsetMapping;->originalToTransformed(I)I

    move-result v0

    if-ltz p1, :cond_0

    .line 93
    iget v1, p0, Landroidx/compose/foundation/text/ValidatingOffsetMapping;->originalLength:I

    if-gt p1, v1, :cond_0

    .line 96
    iget p0, p0, Landroidx/compose/foundation/text/ValidatingOffsetMapping;->transformedLength:I

    invoke-static {v0, p0, p1}, Landroidx/compose/foundation/text/ValidatingOffsetMappingKt;->access$validateOriginalToTransformed(III)V

    :cond_0
    return v0
.end method

.method public transformedToOriginal(I)I
    .locals 2

    .line 106
    iget-object v0, p0, Landroidx/compose/foundation/text/ValidatingOffsetMapping;->delegate:Landroidx/compose/ui/text/input/OffsetMapping;

    invoke-interface {v0, p1}, Landroidx/compose/ui/text/input/OffsetMapping;->transformedToOriginal(I)I

    move-result v0

    if-ltz p1, :cond_0

    .line 107
    iget v1, p0, Landroidx/compose/foundation/text/ValidatingOffsetMapping;->transformedLength:I

    if-gt p1, v1, :cond_0

    .line 110
    iget p0, p0, Landroidx/compose/foundation/text/ValidatingOffsetMapping;->originalLength:I

    invoke-static {v0, p0, p1}, Landroidx/compose/foundation/text/ValidatingOffsetMappingKt;->access$validateTransformedToOriginal(III)V

    :cond_0
    return v0
.end method
