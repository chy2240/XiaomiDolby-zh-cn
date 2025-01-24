.class public final Landroidx/compose/ui/platform/ScrollObservationScope;
.super Ljava/lang/Object;
.source "SemanticsUtils.android.kt"

# interfaces
.implements Landroidx/compose/ui/node/OwnerScope;


# instance fields
.field private final allScopes:Ljava/util/List;

.field private horizontalScrollAxisRange:Landroidx/compose/ui/semantics/ScrollAxisRange;

.field private oldXValue:Ljava/lang/Float;

.field private oldYValue:Ljava/lang/Float;

.field private final semanticsNodeId:I

.field private verticalScrollAxisRange:Landroidx/compose/ui/semantics/ScrollAxisRange;


# direct methods
.method static constructor <clinit>()V
    .locals 0

    .line 0
    return-void
.end method

.method public constructor <init>(ILjava/util/List;Ljava/lang/Float;Ljava/lang/Float;Landroidx/compose/ui/semantics/ScrollAxisRange;Landroidx/compose/ui/semantics/ScrollAxisRange;)V
    .locals 0

    .line 98
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 99
    iput p1, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->semanticsNodeId:I

    .line 100
    iput-object p2, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->allScopes:Ljava/util/List;

    .line 101
    iput-object p3, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->oldXValue:Ljava/lang/Float;

    .line 102
    iput-object p4, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->oldYValue:Ljava/lang/Float;

    .line 103
    iput-object p5, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->horizontalScrollAxisRange:Landroidx/compose/ui/semantics/ScrollAxisRange;

    .line 104
    iput-object p6, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->verticalScrollAxisRange:Landroidx/compose/ui/semantics/ScrollAxisRange;

    return-void
.end method


# virtual methods
.method public final getHorizontalScrollAxisRange()Landroidx/compose/ui/semantics/ScrollAxisRange;
    .locals 0

    .line 103
    iget-object p0, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->horizontalScrollAxisRange:Landroidx/compose/ui/semantics/ScrollAxisRange;

    return-object p0
.end method

.method public final getOldXValue()Ljava/lang/Float;
    .locals 0

    .line 101
    iget-object p0, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->oldXValue:Ljava/lang/Float;

    return-object p0
.end method

.method public final getOldYValue()Ljava/lang/Float;
    .locals 0

    .line 102
    iget-object p0, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->oldYValue:Ljava/lang/Float;

    return-object p0
.end method

.method public final getSemanticsNodeId()I
    .locals 0

    .line 99
    iget p0, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->semanticsNodeId:I

    return p0
.end method

.method public final getVerticalScrollAxisRange()Landroidx/compose/ui/semantics/ScrollAxisRange;
    .locals 0

    .line 104
    iget-object p0, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->verticalScrollAxisRange:Landroidx/compose/ui/semantics/ScrollAxisRange;

    return-object p0
.end method

.method public isValidOwnerScope()Z
    .locals 1

    .line 107
    iget-object v0, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->allScopes:Ljava/util/List;

    invoke-interface {v0, p0}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result p0

    return p0
.end method

.method public final setHorizontalScrollAxisRange(Landroidx/compose/ui/semantics/ScrollAxisRange;)V
    .locals 0

    .line 103
    iput-object p1, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->horizontalScrollAxisRange:Landroidx/compose/ui/semantics/ScrollAxisRange;

    return-void
.end method

.method public final setOldXValue(Ljava/lang/Float;)V
    .locals 0

    .line 101
    iput-object p1, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->oldXValue:Ljava/lang/Float;

    return-void
.end method

.method public final setOldYValue(Ljava/lang/Float;)V
    .locals 0

    .line 102
    iput-object p1, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->oldYValue:Ljava/lang/Float;

    return-void
.end method

.method public final setVerticalScrollAxisRange(Landroidx/compose/ui/semantics/ScrollAxisRange;)V
    .locals 0

    .line 104
    iput-object p1, p0, Landroidx/compose/ui/platform/ScrollObservationScope;->verticalScrollAxisRange:Landroidx/compose/ui/semantics/ScrollAxisRange;

    return-void
.end method
