.class public final Landroidx/compose/foundation/layout/Arrangement$Absolute$Left$1;
.super Ljava/lang/Object;
.source "Arrangement.kt"

# interfaces
.implements Landroidx/compose/foundation/layout/Arrangement$Horizontal;


# direct methods
.method constructor <init>()V
    .locals 0

    .line 367
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public arrange(Landroidx/compose/ui/unit/Density;I[ILandroidx/compose/ui/unit/LayoutDirection;[I)V
    .locals 0

    .line 373
    sget-object p0, Landroidx/compose/foundation/layout/Arrangement;->INSTANCE:Landroidx/compose/foundation/layout/Arrangement;

    const/4 p1, 0x0

    invoke-virtual {p0, p3, p5, p1}, Landroidx/compose/foundation/layout/Arrangement;->placeLeftOrTop$foundation_layout_release([I[IZ)V

    return-void
.end method

.method public toString()Ljava/lang/String;
    .locals 0

    .line 375
    const-string p0, "AbsoluteArrangement#Left"

    return-object p0
.end method
