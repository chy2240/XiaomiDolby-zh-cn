.class final Lcom/android/settingslib/spa/framework/util/EntryLoggerKt$wrapOnClickWithLog$1$1;
.super Lkotlin/jvm/internal/Lambda;
.source "EntryLogger.kt"

# interfaces
.implements Lkotlin/jvm/functions/Function0;


# instance fields
.field final synthetic $logEvent:Lkotlin/jvm/functions/Function2;

.field final synthetic $onClick:Lkotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(Lkotlin/jvm/functions/Function2;Lkotlin/jvm/functions/Function0;)V
    .locals 0

    .line 0
    iput-object p1, p0, Lcom/android/settingslib/spa/framework/util/EntryLoggerKt$wrapOnClickWithLog$1$1;->$logEvent:Lkotlin/jvm/functions/Function2;

    iput-object p2, p0, Lcom/android/settingslib/spa/framework/util/EntryLoggerKt$wrapOnClickWithLog$1$1;->$onClick:Lkotlin/jvm/functions/Function0;

    const/4 p1, 0x0

    invoke-direct {p0, p1}, Lkotlin/jvm/internal/Lambda;-><init>(I)V

    return-void
.end method


# virtual methods
.method public bridge synthetic invoke()Ljava/lang/Object;
    .locals 0

    .line 45
    invoke-virtual {p0}, Lcom/android/settingslib/spa/framework/util/EntryLoggerKt$wrapOnClickWithLog$1$1;->invoke()V

    sget-object p0, Lkotlin/Unit;->INSTANCE:Lkotlin/Unit;

    return-object p0
.end method

.method public final invoke()V
    .locals 3

    .line 46
    iget-object v0, p0, Lcom/android/settingslib/spa/framework/util/EntryLoggerKt$wrapOnClickWithLog$1$1;->$logEvent:Lkotlin/jvm/functions/Function2;

    sget-object v1, Lcom/android/settingslib/spa/framework/common/LogEvent;->ENTRY_CLICK:Lcom/android/settingslib/spa/framework/common/LogEvent;

    invoke-static {}, Landroidx/core/os/BundleKt;->bundleOf()Landroid/os/Bundle;

    move-result-object v2

    invoke-interface {v0, v1, v2}, Lkotlin/jvm/functions/Function2;->invoke(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 47
    iget-object p0, p0, Lcom/android/settingslib/spa/framework/util/EntryLoggerKt$wrapOnClickWithLog$1$1;->$onClick:Lkotlin/jvm/functions/Function0;

    invoke-interface {p0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    return-void
.end method
