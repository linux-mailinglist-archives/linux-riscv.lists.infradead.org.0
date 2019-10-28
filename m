Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 8E3B9E6AEC
	for <lists+linux-riscv@lfdr.de>; Mon, 28 Oct 2019 03:42:38 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-ID:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8dHgnDrKykGBMOQSQGrFLtpkUSzDRl+8ozm7D51vnLU=; b=e67ifBqFqPXkoW
	7hhBoyw+gFoGimICpKI1Zle610wALtXT0lwtnibm6cdHn+5/KFbwU2Sh4IJLMWIdYN8PujdiE2V2X
	S/Sf5rcSN4usfibA2fXYg3SH1EMm/686dhO1HFFJI1PSPAzlEV6j/MC3eFfAWRx8SWDa1zLRvRtWE
	4BRVP8aVyhr6icgPMxIElFRsLb24gO1Ap3sb9Mn8QKGLg7NH3vh6/1HxgpnDorHwZQT33L1Rz6Z5p
	PVziK+ZHlntdfhuX6vwpifWd8fCfdxNwwPg6p9jRHH7zUinW7z9lka0qEi08ID1my+O49q0zVnD/o
	dksn//G3/8UvVOPoQiYg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iOuz7-00070G-CC; Mon, 28 Oct 2019 02:42:21 +0000
Received: from 59-120-53-16.hinet-ip.hinet.net ([59.120.53.16]
 helo=ATCSQR.andestech.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iOuz1-0006rg-0W
 for linux-riscv@lists.infradead.org; Mon, 28 Oct 2019 02:42:17 +0000
Received: from mail.andestech.com (atcpcs16.andestech.com [10.0.1.222])
 by ATCSQR.andestech.com with ESMTP id x9S2O9tf087229;
 Mon, 28 Oct 2019 10:24:09 +0800 (GMT-8)
 (envelope-from nickhu@andestech.com)
Received: from atcsqa06.andestech.com (10.0.15.65) by ATCPCS16.andestech.com
 (10.0.1.222) with Microsoft SMTP Server id 14.3.123.3; Mon, 28 Oct 2019
 10:41:38 +0800
From: Nick Hu <nickhu@andestech.com>
To: <aryabinin@virtuozzo.com>, <glider@google.com>, <dvyukov@google.com>,
 <corbet@lwn.net>, <paul.walmsley@sifive.com>, <palmer@sifive.com>,
 <aou@eecs.berkeley.edu>, <tglx@linutronix.de>,
 <gregkh@linuxfoundation.org>, <alankao@andestech.com>,
 <Anup.Patel@wdc.com>, <atish.patra@wdc.com>,
 <kasan-dev@googlegroups.com>, <linux-doc@vger.kernel.org>,
 <linux-kernel@vger.kernel.org>, <linux-riscv@lists.infradead.org>,
 <linux-mm@kvack.org>, <green.hu@gmail.com>
Subject: [PATCH v4 1/3] kasan: No KASAN's memmove check if archs don't have it.
Date: Mon, 28 Oct 2019 10:40:59 +0800
Message-ID: <20191028024101.26655-2-nickhu@andestech.com>
X-Mailer: git-send-email 2.17.0
In-Reply-To: <20191028024101.26655-1-nickhu@andestech.com>
References: <20191028024101.26655-1-nickhu@andestech.com>
MIME-Version: 1.0
X-Originating-IP: [10.0.15.65]
X-DNSRBL: 
X-MAIL: ATCSQR.andestech.com x9S2O9tf087229
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191027_194215_341108_2F0BA4C1 
X-CRM114-Status: UNSURE (   6.06  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.4 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.4 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 TVD_RCVD_IP            Message was received from an IP address
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.4 RDNS_DYNAMIC           Delivered to internal network by host with
 dynamic-looking rDNS
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
Cc: Nick Hu <nickhu@andestech.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

If archs don't have memmove then the C implementation from lib/string.c is used,
and then it's instrumented by compiler. So there is no need to add KASAN's
memmove to manual checks.

Signed-off-by: Nick Hu <nickhu@andestech.com>
---
 mm/kasan/common.c | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/mm/kasan/common.c b/mm/kasan/common.c
index 6814d6d6a023..897f9520bab3 100644
--- a/mm/kasan/common.c
+++ b/mm/kasan/common.c
@@ -107,6 +107,7 @@ void *memset(void *addr, int c, size_t len)
 	return __memset(addr, c, len);
 }
 
+#ifdef __HAVE_ARCH_MEMMOVE
 #undef memmove
 void *memmove(void *dest, const void *src, size_t len)
 {
@@ -115,6 +116,7 @@ void *memmove(void *dest, const void *src, size_t len)
 
 	return __memmove(dest, src, len);
 }
+#endif
 
 #undef memcpy
 void *memcpy(void *dest, const void *src, size_t len)
-- 
2.17.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
