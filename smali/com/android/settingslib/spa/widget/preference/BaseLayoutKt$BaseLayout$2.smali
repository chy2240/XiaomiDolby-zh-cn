.class final Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseLayout$2;
.super Lkotlin/jvm/internal/Lambda;
.source "BaseLayout.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function1;


# static fields
.field public static final INSTANCE:Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseLayout$2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 0
    new-instance v0, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseLayout$2;

    invoke-direct {v0}, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseLayout$2;-><init>()V

    sput-object v0, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseLayout$2;->INSTANCE:Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseLayout$2;

    return-void
.end method

.method constructor <init>()V
    .locals 1

    .line 0
    const/4 v0, 0x1

    invoke-direct {p0, v0}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 0

    .line 56
    check-cast p1, Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;

    invoke-virtual {p0, p1}, Lcom/android/settingslib/spa/widget/preference/BaseLayoutKt$BaseLayout$2;->invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke(Landroidx/compose/ui/semantics/SemanticsPropertyReceiver;)V
    .locals 0

    .line 0
    const-string p0, "$this$semantics"

    invoke-static {p1, p0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    return-void
.end method
