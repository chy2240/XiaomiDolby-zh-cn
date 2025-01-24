.class public abstract Lcom/android/settingslib/spa/framework/compose/ModifierExtKt;
.super Ljava/lang/Object;
.source "ModifierExt.kt"


# direct methods
.method public static final contentDescription(Landroidx/compose/ui/Modifier;Ljava/lang/String;)Landroidx/compose/ui/Modifier;
    .locals 3

    const-string v0, "<this>"

    invoke-static {p0, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    if-eqz p1, :cond_0

    .line 25
    new-instance v0, Lcom/android/settingslib/spa/framework/compose/ModifierExtKt$contentDescription$1;

    invoke-direct {v0, p1}, Lcom/android/settingslib/spa/framework/compose/ModifierExtKt$contentDescription$1;-><init>(Ljava/lang/String;)V

    const/4 p1, 0x1

    const/4 v1, 0x0

    const/4 v2, 0x0

    invoke-static {p0, v2, v0, p1, v1}, Landroidx/compose/ui/semantics/SemanticsModifierKt;->semantics$default(Landroidx/compose/ui/Modifier;ZLkotlin/jvm/functions/Function1;ILjava/lang/Object;)Landroidx/compose/ui/Modifier;

    move-result-object p0

    :cond_0
    return-object p0
.end method
