Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 796D296389
	for <lists+linux-riscv@lfdr.de>; Tue, 20 Aug 2019 17:00:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:In-Reply-To:
	Message-Id:Date:Subject:To:From:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=K9KW3HywlvpwYNoorRDPkTe7ayHaqT47zDKm2cBkC1s=; b=ZUimpn+LYUqKvH
	AGjLv2W9wWOez2KN+cUOS22LhOq6QRFUrCPpsC525nMad9DiOubpRmfriqWyC6OIpxzPDlxShYcLQ
	ecUclw0b0qKH1kwNylNVDrEiNlUb3vtRZ98qSJ/vGFP5N+87EesH6YKM1GnuTNhgecs8vjv3udcx8
	TBjcxV5s9YaRi/y3+B/mUdrPMuGa3zYmXEbqLSnssum+hEZuCBU7Z3VgnNdXOEvgWpAPJ0AxooTC3
	sk3jt94jIXTT64ZdZhU0i4GVmci1XK4vl1W3jvQhSrhPwboAot0gZi+zovcWuv/8GEL9AOuDAgbOQ
	rurkSgnnz576R1zCYDaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1i05c4-0006Es-Jw; Tue, 20 Aug 2019 14:59:56 +0000
Received: from mx2.suse.de ([195.135.220.15] helo=mx1.suse.de)
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1i05ak-0004ys-2J; Tue, 20 Aug 2019 14:58:35 +0000
X-Virus-Scanned: by amavisd-new at test-mx.suse.de
Received: from relay2.suse.de (unknown [195.135.220.254])
 by mx1.suse.de (Postfix) with ESMTP id C0C20AFC3;
 Tue, 20 Aug 2019 14:58:32 +0000 (UTC)
From: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
To: catalin.marinas@arm.com, hch@lst.de, wahrenst@gmx.net,
 marc.zyngier@arm.com, robh+dt@kernel.org,
 Robin Murphy <robin.murphy@arm.com>, linux-arm-kernel@lists.infradead.org,
 devicetree@vger.kernel.org, linux-arch@vger.kernel.org,
 iommu@lists.linux-foundation.org, linux-mm@kvack.org,
 linux-riscv@lists.infradead.org, Frank Rowand <frowand.list@gmail.com>
Subject: [PATCH v2 03/11] of/fdt: add of_fdt_machine_is_compatible function
Date: Tue, 20 Aug 2019 16:58:11 +0200
Message-Id: <20190820145821.27214-4-nsaenzjulienne@suse.de>
X-Mailer: git-send-email 2.22.0
In-Reply-To: <20190820145821.27214-1-nsaenzjulienne@suse.de>
References: <20190820145821.27214-1-nsaenzjulienne@suse.de>
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190820_075834_251712_B55B807E 
X-CRM114-Status: UNSURE (   6.90  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [195.135.220.15 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
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
Cc: phill@raspberryi.org, f.fainelli@gmail.com, linux-kernel@vger.kernel.org,
 eric@anholt.net, mbrugger@suse.com, linux-rpi-kernel@lists.infradead.org,
 akpm@linux-foundation.org, will@kernel.org, nsaenzjulienne@suse.de,
 m.szyprowski@samsung.com
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Provides the same functionality as of_machine_is_compatible.

Signed-off-by: Nicolas Saenz Julienne <nsaenzjulienne@suse.de>
---

Changes in v2: None

 drivers/of/fdt.c | 7 +++++++
 1 file changed, 7 insertions(+)

diff --git a/drivers/of/fdt.c b/drivers/of/fdt.c
index 9cdf14b9aaab..06ffbd39d9af 100644
--- a/drivers/of/fdt.c
+++ b/drivers/of/fdt.c
@@ -802,6 +802,13 @@ const char * __init of_flat_dt_get_machine_name(void)
 	return name;
 }
 
+static const int __init of_fdt_machine_is_compatible(char *name)
+{
+	unsigned long dt_root = of_get_flat_dt_root();
+
+	return of_flat_dt_is_compatible(dt_root, name);
+}
+
 /**
  * of_flat_dt_match_machine - Iterate match tables to find matching machine.
  *
-- 
2.22.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
