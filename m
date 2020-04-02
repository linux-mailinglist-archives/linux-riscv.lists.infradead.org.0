Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B95C219BBC6
	for <lists+linux-riscv@lfdr.de>; Thu,  2 Apr 2020 08:39:09 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:Message-ID:Date:Subject:To:From:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=vWRVT5LH4HOCDH7tZIXoFfbttZHZiChc+ADb4KGLCG8=; b=ENA
	DmCbX5RslW46kOEEPeRf7WMqn5kRz90ZwF56zfKlFuf2Rm2OEXTVg63dJRl3VVnycck0Y5Bk4VEDB
	f01kPslz4khUEBtXM+kYBzhIdnX7Pm5vVB9c2SACQVZGAzUf2LtVdPTg6BSWi3XuUESPFL8uOxEKo
	bPQX38ZADej31rtD+QdgLiJCLpnXk7Gc8f6XUYAEJz6tnj0kpqKfOyz8eQN8/4852c1sohEFw5kXK
	HlegVjuLH6x+wgWt8OcavkvpT/+MxjwdkKLgDddgunljIiqB5VNk7ZMGOPHljDIrObAkaSfrwoTUe
	0lNTiA9fcn21c3OURAy538daJIy3qWw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jJtVJ-0005yl-LT; Thu, 02 Apr 2020 06:39:05 +0000
Received: from szxga06-in.huawei.com ([45.249.212.32] helo=huawei.com)
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jJtVG-0005yE-W7
 for linux-riscv@lists.infradead.org; Thu, 02 Apr 2020 06:39:04 +0000
Received: from DGGEMS413-HUB.china.huawei.com (unknown [172.30.72.58])
 by Forcepoint Email with ESMTP id 7F077BEF4BD748FB13A1;
 Thu,  2 Apr 2020 14:38:55 +0800 (CST)
Received: from huawei.com (10.175.124.28) by DGGEMS413-HUB.china.huawei.com
 (10.3.19.213) with Microsoft SMTP Server id 14.3.487.0; Thu, 2 Apr 2020
 14:38:45 +0800
From: Jason Yan <yanaijie@huawei.com>
To: <palmer@dabbelt.com>, <paul.walmsley@sifive.com>, <anup@brainfault.org>,
 <yash.shah@sifive.com>, <linux-riscv@lists.infradead.org>
Subject: [PATCH] sifive_l2_cache: remove unnecessary comparison
Date: Thu, 2 Apr 2020 14:37:21 +0800
Message-ID: <20200402063721.37868-1-yanaijie@huawei.com>
X-Mailer: git-send-email 2.17.2
MIME-Version: 1.0
Content-Type: text/plain
X-Originating-IP: [10.175.124.28]
X-CFilter-Loop: Reflected
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200401_233903_200980_20A50226 
X-CRM114-Status: UNSURE (   8.27  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -2.3 (--)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-2.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -2.3 RCVD_IN_DNSWL_MED      RBL: Sender listed at https://www.dnswl.org/,
 medium trust [45.249.212.32 listed in list.dnswl.org]
 -0.0 SPF_HELO_PASS          SPF: HELO matches SPF record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Jason Yan <yanaijie@huawei.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

The variable val is unsigend and val >= 0 is always true.

Fix the following gcc warning:

drivers/soc/sifive/sifive_l2_cache.c:51:11: warning: comparison of unsigned expression >= 0 is always true [-Wtype-limits]
  if ((val >= 0 && val < 0xFF) || (val >= 0x10000 && val < 0x100FF))
           ^~

Reported-by: Hulk Robot <hulkci@huawei.com>
Signed-off-by: Jason Yan <yanaijie@huawei.com>
---
 drivers/soc/sifive/sifive_l2_cache.c | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/drivers/soc/sifive/sifive_l2_cache.c b/drivers/soc/sifive/sifive_l2_cache.c
index a5069394cd61..17181879fcbc 100644
--- a/drivers/soc/sifive/sifive_l2_cache.c
+++ b/drivers/soc/sifive/sifive_l2_cache.c
@@ -48,7 +48,7 @@ static ssize_t l2_write(struct file *file, const char __user *data,
 
 	if (kstrtouint_from_user(data, count, 0, &val))
 		return -EINVAL;
-	if ((val >= 0 && val < 0xFF) || (val >= 0x10000 && val < 0x100FF))
+	if (val < 0xFF || (val >= 0x10000 && val < 0x100FF))
 		writel(val, l2_base + SIFIVE_L2_ECCINJECTERR);
 	else
 		return -EINVAL;
-- 
2.17.2


