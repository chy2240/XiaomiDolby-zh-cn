.class public final Landroidx/compose/material3/TopAppBarState;
.super Ljava/lang/Object;
.source "AppBar.kt"


# static fields
.field public static final Companion:Landroidx/compose/material3/TopAppBarState$Companion;

.field private static final Saver:Landroidx/compose/runtime/saveable/Saver;


# instance fields
.field private _heightOffset:Landroidx/compose/runtime/MutableFloatState;

.field private final contentOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

.field private heightOffsetLimit:F


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Landroidx/compose/material3/TopAppBarState$Companion;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Landroidx/compose/material3/TopAppBarState$Companion;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/material3/TopAppBarState;->Companion:Landroidx/compose/material3/TopAppBarState$Companion;

    .line 1781
    sget-object v0, Landroidx/compose/material3/TopAppBarState$Companion$Saver$1;->INSTANCE:Landroidx/compose/material3/TopAppBarState$Companion$Saver$1;

    sget-object v1, Landroidx/compose/material3/TopAppBarState$Companion$Saver$2;->INSTANCE:Landroidx/compose/material3/TopAppBarState$Companion$Saver$2;

    invoke-static {v0, v1}, Landroidx/compose/runtime/saveable/ListSaverKt;->listSaver(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)Landroidx/compose/runtime/saveable/Saver;

    move-result-object v0

    sput-object v0, Landroidx/compose/material3/TopAppBarState;->Saver:Landroidx/compose/runtime/saveable/Saver;

    return-void
.end method

.method public constructor <init>(FFF)V
    .locals 0

    .line 1704
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 1718
    iput p1, p0, Landroidx/compose/material3/TopAppBarState;->heightOffsetLimit:F

    .line 1743
    invoke-static {p3}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/TopAppBarState;->contentOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 1793
    invoke-static {p2}, Landroidx/compose/runtime/PrimitiveSnapshotStateKt;->mutableFloatStateOf(F)Landroidx/compose/runtime/MutableFloatState;

    move-result-object p1

    iput-object p1, p0, Landroidx/compose/material3/TopAppBarState;->_heightOffset:Landroidx/compose/runtime/MutableFloatState;

    return-void
.end method

.method public static final synthetic access$getSaver$cp()Landroidx/compose/runtime/saveable/Saver;
    .locals 1

    .line 1704
    sget-object v0, Landroidx/compose/material3/TopAppBarState;->Saver:Landroidx/compose/runtime/saveable/Saver;

    return-object v0
.end method


# virtual methods
.method public final getCollapsedFraction()F
    .locals 2

    .line 1753
    iget v0, p0, Landroidx/compose/material3/TopAppBarState;->heightOffsetLimit:F

    const/4 v1, 0x0

    cmpg-float v0, v0, v1

    if-nez v0, :cond_0

    goto :goto_0

    .line 1754
    :cond_0
    invoke-virtual {p0}, Landroidx/compose/material3/TopAppBarState;->getHeightOffset()F

    move-result v0

    iget p0, p0, Landroidx/compose/material3/TopAppBarState;->heightOffsetLimit:F

    div-float v1, v0, p0

    :goto_0
    return v1
.end method

.method public final getContentOffset()F
    .locals 0

    .line 1743
    iget-object p0, p0, Landroidx/compose/material3/TopAppBarState;->contentOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 75
    invoke-interface {p0}, Landroidx/compose/runtime/FloatState;->getFloatValue()F

    move-result p0

    return p0
.end method

.method public final getHeightOffset()F
    .locals 0

    .line 1727
    iget-object p0, p0, Landroidx/compose/material3/TopAppBarState;->_heightOffset:Landroidx/compose/runtime/MutableFloatState;

    invoke-interface {p0}, Landroidx/compose/runtime/MutableFloatState;->getFloatValue()F

    move-result p0

    return p0
.end method

.method public final getHeightOffsetLimit()F
    .locals 0

    .line 1718
    iget p0, p0, Landroidx/compose/material3/TopAppBarState;->heightOffsetLimit:F

    return p0
.end method

.method public final setContentOffset(F)V
    .locals 0

    .line 1743
    iget-object p0, p0, Landroidx/compose/material3/TopAppBarState;->contentOffset$delegate:Landroidx/compose/runtime/MutableFloatState;

    .line 108
    invoke-interface {p0, p1}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method public final setHeightOffset(F)V
    .locals 2

    .line 1729
    iget-object v0, p0, Landroidx/compose/material3/TopAppBarState;->_heightOffset:Landroidx/compose/runtime/MutableFloatState;

    .line 1730
    iget p0, p0, Landroidx/compose/material3/TopAppBarState;->heightOffsetLimit:F

    const/4 v1, 0x0

    invoke-static {p1, p0, v1}, Lkotlin/ranges/RangesKt;->coerceIn(FFF)F

    move-result p0

    .line 1729
    invoke-interface {v0, p0}, Landroidx/compose/runtime/MutableFloatState;->setFloatValue(F)V

    return-void
.end method

.method public final setHeightOffsetLimit(F)V
    .locals 0

    .line 1718
    iput p1, p0, Landroidx/compose/material3/TopAppBarState;->heightOffsetLimit:F

    return-void
.end method
