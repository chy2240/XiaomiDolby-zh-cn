.class final Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "TextFieldImpl.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# instance fields
.field final synthetic $cutoutSize:Landroidx/compose/runtime/MutableState;

.field final synthetic $labelPosition:Landroidx/compose/material3/TextFieldLabelPosition;

.field final synthetic $labelProgress:Landroidx/compose/runtime/State;


# direct methods
.method constructor <init>(Landroidx/compose/material3/TextFieldLabelPosition;Landroidx/compose/runtime/State;Landroidx/compose/runtime/MutableState;)V
    .locals 0

    .line 0
    iput-object p1, p0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$1$1;->$labelPosition:Landroidx/compose/material3/TextFieldLabelPosition;

    iput-object p2, p0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$1$1;->$labelProgress:Landroidx/compose/runtime/State;

    iput-object p3, p0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$1$1;->$cutoutSize:Landroidx/compose/runtime/MutableState;

    const/4 p1, 0x1

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 2

    .line 278
    check-cast p1, Landroidx/compose/ui/geometry/Size;

    invoke-virtual {p1}, Landroidx/compose/ui/geometry/Size;->unbox-impl()J

    move-result-wide v0

    invoke-virtual {p0, v0, v1}, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$1$1;->invoke-uvyYCjk(J)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke-uvyYCjk(J)V
    .locals 4

    .line 279
    iget-object v0, p0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$1$1;->$labelPosition:Landroidx/compose/material3/TextFieldLabelPosition;

    instance-of v0, v0, Landroidx/compose/material3/TextFieldLabelPosition$Default;

    if-nez v0, :cond_0

    return-void

    .line 282
    :cond_0
    iget-object v0, p0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$1$1;->$labelProgress:Landroidx/compose/runtime/State;

    invoke-interface {v0}, Landroidx/compose/runtime/State;->getValue()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/Number;

    invoke-virtual {v0}, Ljava/lang/Number;->floatValue()F

    move-result v0

    .line 283
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result v1

    mul-float/2addr v1, v0

    .line 284
    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result p1

    mul-float/2addr p1, v0

    .line 286
    iget-object p2, p0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$1$1;->$cutoutSize:Landroidx/compose/runtime/MutableState;

    invoke-interface {p2}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/ui/geometry/Size;

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Size;->unbox-impl()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getWidth-impl(J)F

    move-result p2

    cmpg-float p2, p2, v1

    if-nez p2, :cond_1

    .line 287
    iget-object p2, p0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$1$1;->$cutoutSize:Landroidx/compose/runtime/MutableState;

    invoke-interface {p2}, Landroidx/compose/runtime/MutableState;->getValue()Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Landroidx/compose/ui/geometry/Size;

    invoke-virtual {p2}, Landroidx/compose/ui/geometry/Size;->unbox-impl()J

    move-result-wide v2

    invoke-static {v2, v3}, Landroidx/compose/ui/geometry/Size;->getHeight-impl(J)F

    move-result p2

    cmpg-float p2, p2, p1

    if-nez p2, :cond_1

    goto :goto_0

    .line 289
    :cond_1
    iget-object p0, p0, Landroidx/compose/material3/internal/TextFieldImplKt$CommonDecorationBox$3$1$1;->$cutoutSize:Landroidx/compose/runtime/MutableState;

    invoke-static {v1, p1}, Landroidx/compose/ui/geometry/SizeKt;->Size(FF)J

    move-result-wide p1

    invoke-static {p1, p2}, Landroidx/compose/ui/geometry/Size;->box-impl(J)Landroidx/compose/ui/geometry/Size;

    move-result-object p1

    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableState;->setValue(Ljava/lang/Object;)V

    :goto_0
    return-void
.end method
