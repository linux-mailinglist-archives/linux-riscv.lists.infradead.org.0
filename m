Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 17EC928C97
	for <lists+linux-riscv@lfdr.de>; Thu, 23 May 2019 23:46:16 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=TGPV19rEfFQabwmLvwWxfWftktLhL+w3JCTikKNB5v4=; b=MOc
	YIUbU9vVAySSGpX/RbqMpr+GvRYvLFCmfcBtWzlIw3ReQzvfV5VnMV5WsJi5T+SsXBdP6IFbAuDg9
	H0NDuZphvKv7E03ONbYqs8GRoLvVDf9BINMc8I1J75BqgOegbb7bo6DR1I4XITZrZuUN/pBuaCBX+
	nt90t+q3TmQCQsTQQZhvoaAQ18IgO0asyyJ8UkAQBbihj9+ZZ79AYcWJBFZOZz6DtaQILjhtsomVM
	5mfIkR1WrF5hOfv6Z29W4XaNyL/dsrNOB0ED6B0oOHfPDpQ3/wspgf9t1Iuhhvtf3wVkjSwRB/+vh
	WWHApTBPI/racOqiYS8xNPA9Pi/x/bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTvXQ-0004XS-0H; Thu, 23 May 2019 21:46:12 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTvXN-0004W2-6L
 for linux-riscv@lists.infradead.org; Thu, 23 May 2019 21:46:10 +0000
Received: by mail-pg1-x541.google.com with SMTP id v11so3811233pgl.5
 for <linux-riscv@lists.infradead.org>; Thu, 23 May 2019 14:46:07 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id;
 bh=jLaVtK3dTIBGULW9LqgDdHPCnDBMlxzNCTE/sRHoa70=;
 b=ShEJArcL1KurA1638gz4USiZ00iMtMSug5yVVcXiRtq5yuXns/UC6ym+0dTJvdOUoj
 78DW7v4DCsJEVZi7VsL+DUQGnYD/1Gw8cYLRnzV2fIY9cvZHx4JmP8dJBZ/CkrOvy/r6
 hi6huQyiN4IcB8uajCWgiy5jB/ADDU4MVssRWpr3I9BmE61Qbz5XtRDsAnlSFWRDu5DV
 sPy2ijb70+9EyYSeZQxR5v5/w559ski9jk2+HKGKlMcSUeFIRbXFkN2eGJ3NZx0sXHnv
 YduhiMCdIg52qX7KfA1u3Patzl0qE9lP7Gnrb1Jxs3NK9JufLOthzMFXYm5Ta+3oh9K1
 nr4g==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id;
 bh=jLaVtK3dTIBGULW9LqgDdHPCnDBMlxzNCTE/sRHoa70=;
 b=PXgV0PTOcdAVul0GiYBNOhT4qmKPq/T3p2c5HMUcD2jHvZrQciE1Kt8cDRfQ1G+8fp
 unxGkXHu4zLoapkGMM7YRrMDSb/GmTmarV13tR+OSRqkppsmDkufTjw7NDfb6w7jgmLQ
 onyUGa/crPwRPw2UgChSU+cXkgnSSXMXXZnSWBCZwl9JOGUR1OuUMc7yzI8PN86QwTmX
 I9EQYRSAsSIuuJ8mE/wW8Fxs0AIVfs6YCYEwcJBgptCDU53MvQwVjVqa+ZgkbGGbr+5x
 VlrJbpNmH1DZXYxVvLJrVDNol6CeibtmCoLF5Yv+Xu7sfRC33syKW5oEEl7cBNhMEcQb
 6xyg==
X-Gm-Message-State: APjAAAWnvaM5s2v+MXxiKzCvptLkUl3GmT+qlpteFf3505LHHcNc7lWq
 aMB36bTNC8PfkCRdw/Q6R7D8/Q==
X-Google-Smtp-Source: APXvYqynmmrSYP3AvQ6rwIRLvBAGL2pYB9a1i/aJMnlDC2kN1XI9/kUmEwXDShzjnRKLI1X8+9HLCQ==
X-Received: by 2002:a63:5211:: with SMTP id g17mr69897684pgb.405.1558647967581; 
 Thu, 23 May 2019 14:46:07 -0700 (PDT)
Received: from nuc7.sifive.com ([12.206.222.2])
 by smtp.gmail.com with ESMTPSA id q10sm376519pff.132.2019.05.23.14.46.06
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 23 May 2019 14:46:06 -0700 (PDT)
From: Alan Mikhak <alan.mikhak@sifive.com>
X-Google-Original-From: Alan Mikhak < alan.mikhak@sifive.com >
To: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, kishon@ti.com,
 lorenzo.pieralisi@arm.com, linux-riscv@lists.infradead.org,
 palmer@sifive.com, paul.walmsley@sifive.com
Subject: [PATCH v2] PCI: endpoint: Set endpoint controller pointer to null
Date: Thu, 23 May 2019 14:45:44 -0700
Message-Id: <1558647944-13816-1-git-send-email-alan.mikhak@sifive.com>
X-Mailer: git-send-email 2.7.4
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_144609_374481_089CEFE1 
X-CRM114-Status: UNSURE (   9.81  )
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
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: Alan Mikhak <alan.mikhak@sifive.com>
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Set endpoint controller pointer to null in pci_epc_remove_epf()
to avoid -EBUSY on subsequent call to pci_epc_add_epf().

Requires checking for null endpoint function pointer.

Signed-off-by: Alan Mikhak <alan.mikhak@sifive.com>
---
 drivers/pci/endpoint/pci-epc-core.c | 3 ++-
 1 file changed, 2 insertions(+), 1 deletion(-)

diff --git a/drivers/pci/endpoint/pci-epc-core.c b/drivers/pci/endpoint/pci-epc-core.c
index e4712a0f249c..2091508c1620 100644
--- a/drivers/pci/endpoint/pci-epc-core.c
+++ b/drivers/pci/endpoint/pci-epc-core.c
@@ -519,11 +519,12 @@ void pci_epc_remove_epf(struct pci_epc *epc, struct pci_epf *epf)
 {
 	unsigned long flags;
 
-	if (!epc || IS_ERR(epc))
+	if (!epc || IS_ERR(epc) || !epf)
 		return;
 
 	spin_lock_irqsave(&epc->lock, flags);
 	list_del(&epf->list);
+	epf->epc = NULL;
 	spin_unlock_irqrestore(&epc->lock, flags);
 }
 EXPORT_SYMBOL_GPL(pci_epc_remove_epf);
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
