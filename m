Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 57B1D129341
	for <lists+linux-riscv@lfdr.de>; Mon, 23 Dec 2019 09:46:47 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:MIME-Version:References:In-Reply-To:Message-Id:Date
	:Subject:To:From:Reply-To:Content-Type:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=mUTtbbQMP+MkijNUcJm66aR4PVCMb8ex0jR1j8T76sE=; b=p1/NGzervO/if9
	E0Vy2ZwXcXegFcb77uYuL7b4D+TjodtgK4ubjwp6bacALKN8fTxnXU+SeKC33z5sMzhy71i7cooBj
	a+Xsmc2L/5lP2JIeRuWjZwIMaDX6zLez9pA6CWcFDnsm2C9gqvoe08stfpSKWdQTS7gJEX46elzMi
	GCAtO0DaiO4E7AnVoMLkVRLfcCCqEfGwDCEn/jRIck9fOjfZnosARyBgD7/uexAJQ4BAcSAWYQUY1
	cXnWJfdDWmw0S73PyDCn8PJ9NtfGCY67D04RVXuNjE6966KtQJF3GSGOo5cL34LbqNfjO8U4xqp8u
	9v5J4+52uN7iEqk0KUvg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1ijJMQ-00012D-W4; Mon, 23 Dec 2019 08:46:42 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1ijJMN-00010I-Fn
 for linux-riscv@lists.infradead.org; Mon, 23 Dec 2019 08:46:40 +0000
Received: by mail-pg1-x541.google.com with SMTP id b137so8463154pga.6
 for <linux-riscv@lists.infradead.org>; Mon, 23 Dec 2019 00:46:39 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references
 :mime-version:content-transfer-encoding;
 bh=mUTtbbQMP+MkijNUcJm66aR4PVCMb8ex0jR1j8T76sE=;
 b=W7i1Ah1DaVi0VrtUHgCix96WCPg3lt2WH+YFmFrQreaTFHa9No9pj0FhPJ4t9PP0b/
 SXGw+6mIPCYGt6xS94jT3+Q0KGUvXrkNmBoRNUeB3jsU4GGBaie28VzrQC+TL+syeBHJ
 fqRxBvK2JSjO4k9Gapb6NuUP0cuXFzhk7ZDkXYTYAIpynTU3nby7K+8L+mdvDcBPkZz7
 IwmM7X1c5JmVbCmIyNiaBz95aPnStKFUOEJcxN5rq8bz7BCT07P5yyDPNoxhNnS62Ayq
 nqPCY5dFUxNh1ThK1lG5OIBkVchE/HnOE//b3iSkhSht5tk9VL00+SMqDzZQFHq+xsk2
 VzvQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references:mime-version:content-transfer-encoding;
 bh=mUTtbbQMP+MkijNUcJm66aR4PVCMb8ex0jR1j8T76sE=;
 b=HoUitf9Pkiwyl8j0EhAxGVPNWQP6QOv23c0Be5EVO8oiST6l1CWEDLX64EX6t1eQUd
 aGmOOK2ECRMblBlEG8oKiz7jFRsLqBkhoYsj0uJxUmdhwToaf4kn63NGapveRaY4cA0g
 0spwnQyo+1D6NRzprnFWQRK0vT9bQSaLbDpAUCXq56JHflKuAyyXNPil9WFhhRE9M1ox
 QbLer/ZzltGhz7EwW6KFNo9fxs8N+Z65RGwlUg+SqRTwIfPvoha93+TG+C+gcMYwEfOT
 jpv6L7n/Sm3566U+su/ptaxScPHdKv4RVXgbg6kjw4TAB7eHezCRbzvvcxq5BtS6DkWx
 1wrw==
X-Gm-Message-State: APjAAAXFW5sN8mMKqvQyfDJfJAM+X8RFWxFrcXP/v3HWfjSUzJ2dqyhe
 cYvuPdQRaERoO3Ud/r0iUw/rZg==
X-Google-Smtp-Source: APXvYqx/ccXA1Bz+Pky/9s1hsSq6vCZkh+m2udFmyyAmxtTB5VNmldRlF64rJrpTo/09/dMep38XCA==
X-Received: by 2002:aa7:9111:: with SMTP id 17mr5179582pfh.163.1577090798825; 
 Mon, 23 Dec 2019 00:46:38 -0800 (PST)
Received: from hsinchu02.internal.sifive.com
 (220-132-236-182.HINET-IP.hinet.net. [220.132.236.182])
 by smtp.gmail.com with ESMTPSA id m71sm22000516pje.0.2019.12.23.00.46.37
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Mon, 23 Dec 2019 00:46:38 -0800 (PST)
From: Zong Li <zong.li@sifive.com>
To: paul.walmsley@sifive.com, palmer@dabbelt.com, rostedt@goodmis.org,
 anup@brainfault.org, linux-kernel@vger.kernel.org,
 linux-riscv@lists.infradead.org
Subject: [PATCH 1/2] riscv: ftrace: correct the condition logic in function
 graph tracer
Date: Mon, 23 Dec 2019 16:46:13 +0800
Message-Id: <20191223084614.67126-2-zong.li@sifive.com>
X-Mailer: git-send-email 2.24.1
In-Reply-To: <20191223084614.67126-1-zong.li@sifive.com>
References: <20191223084614.67126-1-zong.li@sifive.com>
MIME-Version: 1.0
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191223_004639_524570_EBBAF67E 
X-CRM114-Status: UNSURE (   8.54  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.29
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Zong Li <zong.li@sifive.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The condition should be logical NOT to assign the hook address to parent
address. Because the return value 0 of function_graph_enter upon
success.

Fixes: e949b6db51dc (riscv/function_graph: Simplify with function_graph_enter())

Signed-off-by: Zong Li <zong.li@sifive.com>
---
 arch/riscv/kernel/ftrace.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/arch/riscv/kernel/ftrace.c b/arch/riscv/kernel/ftrace.c
index b94d8db5ddcc..c40fdcdeb950 100644
--- a/arch/riscv/kernel/ftrace.c
+++ b/arch/riscv/kernel/ftrace.c
@@ -142,7 +142,7 @@ void prepare_ftrace_return(unsigned long *parent, unsigned long self_addr,
 	 */
 	old = *parent;
 
-	if (function_graph_enter(old, self_addr, frame_pointer, parent))
+	if (!function_graph_enter(old, self_addr, frame_pointer, parent))
 		*parent = return_hooker;
 }
 
-- 
2.24.1


