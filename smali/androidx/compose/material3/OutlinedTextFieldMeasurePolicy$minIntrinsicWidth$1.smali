.class final Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$minIntrinsicWidth$1;
.super Lkotlin/jvm/internal/Lambda;
.source "OutlinedTextField.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function2;


# static fields
.field public static final INSTANCE:Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$minIntrinsicWidth$1;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$minIntrinsicWidth$1;

    invoke-direct {v0}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$minIntrinsicWidth$1;-><init>()V

    sput-object v0, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$minIntrinsicWidth$1;->INSTANCE:Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$minIntrinsicWidth$1;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x2

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public final invoke(Landroidx/compose/ui/layout/IntrinsicMeasurable;I)Ljava/lang/Integer;
    .locals 0

    .line 1030
    invoke-interface {p1, p2}, Landroidx/compose/ui/layout/IntrinsicMeasurable;->minIntrinsicWidth(I)I

    move-result p0

    invoke-static {p0}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method

.method public bridge synthetic invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 1029
    check-cast p1, Landroidx/compose/ui/layout/IntrinsicMeasurable;

    check-cast p2, Ljava/lang/Number;

    invoke-virtual {p2}, Ljava/lang/Number;->intValue()I

    move-result p2

    invoke-virtual {p0, p1, p2}, Landroidx/compose/material3/OutlinedTextFieldMeasurePolicy$minIntrinsicWidth$1;->invoke(Landroidx/compose/ui/layout/IntrinsicMeasurable;I)Ljava/lang/Integer;

    move-result-object p0

    return-object p0
.end method
