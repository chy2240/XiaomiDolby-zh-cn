.class public final Landroidx/compose/ui/semantics/SemanticsProperties;
.super Ljava/lang/Object;
.source "SemanticsProperties.kt"


# static fields
.field public static final $stable:I

.field private static final CollectionInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final CollectionItemInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final ContentDataType:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final ContentType:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final Disabled:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final EditableText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final Error:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final Focused:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final Heading:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final HorizontalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field public static final INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

.field private static final ImeAction:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final IndexForKey:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final InvisibleToUser:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final IsContainer:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final IsDialog:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final IsEditable:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final IsPopup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final IsShowingTextSubstitution:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final IsTraversalGroup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final LinkTestMarker:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final LiveRegion:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final MaxTextLength:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final PaneTitle:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final Password:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final ProgressBarRangeInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final Role:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final SelectableGroup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final Selected:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final StateDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final TestTag:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final Text:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final TextSelectionRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final TextSubstitution:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final ToggleableState:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final TraversalIndex:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

.field private static final VerticalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;


# direct methods
.method static constructor <clinit>()V
    .locals 6

    new-instance v0, Landroidx/compose/ui/semantics/SemanticsProperties;

    invoke-direct {v0}, Landroidx/compose/ui/semantics/SemanticsProperties;-><init>()V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties;

    .line 42
    const-string v0, "ContentDescription"

    .line 41
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties$ContentDescription$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$ContentDescription$1;

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->AccessibilityKey(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 49
    const-string v0, "StateDescription"

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->AccessibilityKey(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->StateDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 52
    const-string v0, "ProgressBarRangeInfo"

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->AccessibilityKey(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->ProgressBarRangeInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 57
    const-string v0, "PaneTitle"

    .line 56
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties$PaneTitle$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$PaneTitle$1;

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->AccessibilityKey(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->PaneTitle:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 66
    const-string v0, "SelectableGroup"

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->AccessibilityKey(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->SelectableGroup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 69
    const-string v0, "CollectionInfo"

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->AccessibilityKey(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->CollectionInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 72
    const-string v0, "CollectionItemInfo"

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->AccessibilityKey(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->CollectionItemInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 75
    const-string v0, "Heading"

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->AccessibilityKey(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Heading:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 78
    const-string v0, "Disabled"

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->AccessibilityKey(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Disabled:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 81
    const-string v0, "LiveRegion"

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->AccessibilityKey(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->LiveRegion:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 84
    const-string v0, "Focused"

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->AccessibilityKey(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Focused:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 93
    const-string v0, "IsContainer"

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->AccessibilityKey(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->IsContainer:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 96
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "IsTraversalGroup"

    const/4 v2, 0x0

    const/4 v3, 0x2

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->IsTraversalGroup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 103
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 104
    const-string v1, "InvisibleToUser"

    .line 105
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties$InvisibleToUser$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$InvisibleToUser$1;

    .line 103
    invoke-direct {v0, v1, v4}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->InvisibleToUser:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 111
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 112
    const-string v1, "ContentType"

    .line 113
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties$ContentType$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$ContentType$1;

    .line 111
    invoke-direct {v0, v1, v4}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentType:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 122
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 123
    const-string v1, "ContentDataType"

    .line 124
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties$ContentDataType$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$ContentDataType$1;

    .line 122
    invoke-direct {v0, v1, v4}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDataType:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 132
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 133
    const-string v1, "TraversalIndex"

    .line 134
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties$TraversalIndex$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$TraversalIndex$1;

    .line 132
    invoke-direct {v0, v1, v4}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->TraversalIndex:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 141
    const-string v0, "HorizontalScrollAxisRange"

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->AccessibilityKey(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->HorizontalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 144
    const-string v0, "VerticalScrollAxisRange"

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->AccessibilityKey(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->VerticalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 149
    const-string v0, "IsPopup"

    .line 148
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties$IsPopup$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$IsPopup$1;

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->AccessibilityKey(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->IsPopup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 161
    const-string v0, "IsDialog"

    .line 160
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties$IsDialog$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$IsDialog$1;

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->AccessibilityKey(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->IsDialog:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 179
    const-string v0, "Role"

    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties$Role$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$Role$1;

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->AccessibilityKey(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Role:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 183
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 186
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties$TestTag$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$TestTag$1;

    .line 183
    const-string v4, "TestTag"

    const/4 v5, 0x0

    invoke-direct {v0, v4, v5, v1}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->TestTag:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 198
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 199
    const-string v1, "LinkTestMarker"

    .line 201
    sget-object v4, Landroidx/compose/ui/semantics/SemanticsProperties$LinkTestMarker$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$LinkTestMarker$1;

    .line 198
    invoke-direct {v0, v1, v5, v4}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;ZLkotlin/jvm/functions/Function2;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->LinkTestMarker:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 207
    const-string v0, "Text"

    .line 206
    sget-object v1, Landroidx/compose/ui/semantics/SemanticsProperties$Text$1;->INSTANCE:Landroidx/compose/ui/semantics/SemanticsProperties$Text$1;

    invoke-static {v0, v1}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->AccessibilityKey(Ljava/lang/String;Lkotlin/jvm/functions/Function2;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Text:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 214
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "TextSubstitution"

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->TextSubstitution:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 217
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "IsShowingTextSubstitution"

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->IsShowingTextSubstitution:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 220
    const-string v0, "EditableText"

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->AccessibilityKey(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->EditableText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 223
    const-string v0, "TextSelectionRange"

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->AccessibilityKey(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->TextSelectionRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 226
    const-string v0, "ImeAction"

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->AccessibilityKey(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->ImeAction:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 229
    const-string v0, "Selected"

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->AccessibilityKey(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Selected:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 232
    const-string v0, "ToggleableState"

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->AccessibilityKey(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->ToggleableState:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 235
    const-string v0, "Password"

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->AccessibilityKey(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Password:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 238
    const-string v0, "Error"

    invoke-static {v0}, Landroidx/compose/ui/semantics/SemanticsPropertiesKt;->AccessibilityKey(Ljava/lang/String;)Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    move-result-object v0

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->Error:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 241
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "IndexForKey"

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->IndexForKey:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 244
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "IsEditable"

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->IsEditable:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    .line 247
    new-instance v0, Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const-string v1, "MaxTextLength"

    invoke-direct {v0, v1, v2, v3, v2}, Landroidx/compose/ui/semantics/SemanticsPropertyKey;-><init>(Ljava/lang/String;Lkotlin/jvm/functions/Function2;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Landroidx/compose/ui/semantics/SemanticsProperties;->MaxTextLength:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    const/16 v0, 0x8

    sput v0, Landroidx/compose/ui/semantics/SemanticsProperties;->$stable:I

    return-void
.end method

.method private constructor <init>()V
    .locals 0

    .line 38
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final getCollectionInfo()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 0

    .line 69
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->CollectionInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object p0
.end method

.method public final getCollectionItemInfo()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 0

    .line 72
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->CollectionItemInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object p0
.end method

.method public final getContentDataType$ui_release()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 0

    .line 121
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDataType:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object p0
.end method

.method public final getContentDescription()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 0

    .line 40
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object p0
.end method

.method public final getContentType$ui_release()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 0

    .line 110
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->ContentType:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object p0
.end method

.method public final getDisabled()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 0

    .line 78
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->Disabled:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object p0
.end method

.method public final getEditableText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 0

    .line 220
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->EditableText:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object p0
.end method

.method public final getError()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 0

    .line 238
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->Error:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object p0
.end method

.method public final getFocused()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 0

    .line 84
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->Focused:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object p0
.end method

.method public final getHeading()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 0

    .line 75
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->Heading:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object p0
.end method

.method public final getHorizontalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 0

    .line 141
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->HorizontalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object p0
.end method

.method public final getImeAction()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 0

    .line 226
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->ImeAction:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object p0
.end method

.method public final getIndexForKey()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 0

    .line 241
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->IndexForKey:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object p0
.end method

.method public final getInvisibleToUser()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 0

    .line 102
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->InvisibleToUser:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object p0
.end method

.method public final getIsContainer()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 0

    .line 93
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->IsContainer:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object p0
.end method

.method public final getIsDialog()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 0

    .line 159
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->IsDialog:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object p0
.end method

.method public final getIsEditable()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 0

    .line 244
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->IsEditable:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object p0
.end method

.method public final getIsPopup()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 0

    .line 147
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->IsPopup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object p0
.end method

.method public final getIsShowingTextSubstitution()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 0

    .line 217
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->IsShowingTextSubstitution:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object p0
.end method

.method public final getIsTraversalGroup()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 0

    .line 96
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->IsTraversalGroup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object p0
.end method

.method public final getLinkTestMarker()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 0

    .line 197
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->LinkTestMarker:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object p0
.end method

.method public final getLiveRegion()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 0

    .line 81
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->LiveRegion:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object p0
.end method

.method public final getMaxTextLength()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 0

    .line 247
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->MaxTextLength:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object p0
.end method

.method public final getPaneTitle()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 0

    .line 55
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->PaneTitle:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object p0
.end method

.method public final getPassword()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 0

    .line 235
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->Password:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object p0
.end method

.method public final getProgressBarRangeInfo()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 0

    .line 52
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->ProgressBarRangeInfo:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object p0
.end method

.method public final getRole()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 0

    .line 179
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->Role:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object p0
.end method

.method public final getSelectableGroup()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 0

    .line 66
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->SelectableGroup:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object p0
.end method

.method public final getSelected()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 0

    .line 229
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->Selected:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object p0
.end method

.method public final getStateDescription()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 0

    .line 49
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->StateDescription:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object p0
.end method

.method public final getTestTag()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 0

    .line 182
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->TestTag:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object p0
.end method

.method public final getText()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 0

    .line 205
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->Text:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object p0
.end method

.method public final getTextSelectionRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 0

    .line 223
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->TextSelectionRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object p0
.end method

.method public final getTextSubstitution()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 0

    .line 214
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->TextSubstitution:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object p0
.end method

.method public final getToggleableState()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 0

    .line 232
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->ToggleableState:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object p0
.end method

.method public final getTraversalIndex()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 0

    .line 131
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->TraversalIndex:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object p0
.end method

.method public final getVerticalScrollAxisRange()Landroidx/compose/ui/semantics/SemanticsPropertyKey;
    .locals 0

    .line 144
    sget-object p0, Landroidx/compose/ui/semantics/SemanticsProperties;->VerticalScrollAxisRange:Landroidx/compose/ui/semantics/SemanticsPropertyKey;

    return-object p0
.end method
