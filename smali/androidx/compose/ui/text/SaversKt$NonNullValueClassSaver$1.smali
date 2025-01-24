.class public final Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;
.super Ljava/lang/Object;
.source "Savers.kt"

# interfaces
.implements Landroidx/compose/ui/text/NonNullValueClassSaver;


# instance fields
.field final synthetic $restore:Lkotlin/jvm/functions/Function1;

.field final synthetic $save:Lkotlin/jvm/functions/Function2;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function1;)V
    .locals 0

    iput-object p1, p0, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->$save:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->$restore:Lkotlin/jvm/functions/Function1;

    .line 79
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public restore(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 82
    iget-object p0, p0, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->$restore:Lkotlin/jvm/functions/Function1;

    invoke-interface {p0, p1}, Lkotlin/jvm/functions/Function1;->invoke(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method

.method public save(Landroidx/compose/runtime/saveable/SaverScope;Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 80
    iget-object p0, p0, Landroidx/compose/ui/text/SaversKt$NonNullValueClassSaver$1;->$save:Lkotlin/jvm/functions/Function2;

    invoke-interface {p0, p1, p2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p0

    return-object p0
.end method
