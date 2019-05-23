Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 182B728B63
	for <lists+linux-riscv@lfdr.de>; Thu, 23 May 2019 22:14:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=rcAXx4HRJZAOIEtOJd/oi3I9xMIyM0EmnZNSC9L7VhE=; b=ic3na0NynOxchsrap6MyffULKO
	CYxhdLRa3zM5PQq7mAMgkYYHZVbRuO1xh4MOfrH/D7ziaU1LAolUzWKVx0baqtS2csd6qktQCiEH9
	ciHKqXP6RJjjQQ+w52v0AsIS1XrbT1sJQfgCqFlSh912IPpMqKNfiTZuM37KNz/lspHB9mh8t8Nwo
	7MXNtJnW8l42lf4tdFmj0bMIyYZAuFPVMZfKqfdfeII9MlIZ3wraOxrYsuVLvv7iI0I+xLHU9UFIe
	U1q/JxFwYlIcpm/BzvoX2hg/aI+LaY9zQVLHF47q5CHw+PfDys+BnOZVLr6G7hQl32MIUBaeXlFjT
	74vX+X6Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hTu72-00068x-FM; Thu, 23 May 2019 20:14:52 +0000
Received: from mail-pl1-x642.google.com ([2607:f8b0:4864:20::642])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hTu6z-000675-H6
 for linux-riscv@lists.infradead.org; Thu, 23 May 2019 20:14:51 +0000
Received: by mail-pl1-x642.google.com with SMTP id w7so3186349plz.1
 for <linux-riscv@lists.infradead.org>; Thu, 23 May 2019 13:14:48 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=6gkDN24DEHNecikQAfO3DJ7JR/wol/teQBJzyAbylPE=;
 b=glbLShSIWuwKWWNiYhxijT7zHQDg2YZ+rDfTZTICpfYRPoA2m+b9+2p9hVRGRimcxe
 eyTeN8BJfaSRNof3f+rSO8Q6Y5r+DC7BQumsOMB+vY6JTMxr3AMXY9qboUlWfI6CQatR
 RylunzRKwzVdC7jhqX63X30pBuTszUi6agnZU8dleumrBOdefDl8rJxIQQRf+pg9RSGk
 MumkhQ7VvAK9YJUvaD1POeHSJcTuxtyFa6NgXyfARjRYXQ2ngVgmtkuTipU0JtnRXNPS
 gEgHoRYLxf0qCOVMpP5iUz37oWaN94Cg/WyEklcQ43f3pVG3bvny2aghocXc6PLNru6A
 erXw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=6gkDN24DEHNecikQAfO3DJ7JR/wol/teQBJzyAbylPE=;
 b=QepRj5Be56vxGHtu3sSHlbaB1sLrmzfMzh+wVt5yFkzheRSAP3LH5rfwjoPvB7HXC5
 46ChvaWEEE3ItBTW9YIdHtDm3YgzXlQmESEvetB07ApUbE0GSrtPI1P7EsWzUjboCY/p
 JpCdIjNpRLQrrT9d38dOjAPXnavRz02tR8bnticpVO/qvSTKBQsa9W7mQdwmOsBjgquS
 3/PY2aN/fIbZAc5RyyhLIft/QMStlVmAsAG+KpSxLEaRKmxBlyVPaCdA40uDVdfMY6wH
 IZyADLMFuiPEZyCbQ+SHGm0+RHpG6a7fB5TqPp8yNDYIfIRaIsshiwuAL93AzWBBV3QB
 9exQ==
X-Gm-Message-State: APjAAAVVj69YSVQdI319E2hido2+rGdgtDR9uUQwIh9dykPNOeVBDGxI
 K7/ENkKlGZfve/wDUCc2Gb9aYw==
X-Google-Smtp-Source: APXvYqwmtyNKChwhcovf4WtzVC9Nt812fpxIHPfh5q19R6jEFHGMxxk0MguAJEM/AnwyhJv8Fd+XkA==
X-Received: by 2002:a17:902:9343:: with SMTP id
 g3mr100265540plp.260.1558642488578; 
 Thu, 23 May 2019 13:14:48 -0700 (PDT)
Received: from nuc7.sifive.com ([12.206.222.2])
 by smtp.gmail.com with ESMTPSA id i12sm180839pgb.61.2019.05.23.13.14.47
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Thu, 23 May 2019 13:14:47 -0700 (PDT)
From: Alan Mikhak <alan.mikhak@sifive.com>
X-Google-Original-From: Alan Mikhak < alan.mikhak@sifive.com >
To: linux-pci@vger.kernel.org, linux-kernel@vger.kernel.org, kishon@ti.com,
 lorenzo.pieralisi@arm.com, linux-riscv@lists.infradead.org,
 palmer@sifive.com, paul.walmsley@sifive.com
Subject: [PATCH 1/2] tools: PCI: Fix broken pcitest compilation
Date: Thu, 23 May 2019 13:14:23 -0700
Message-Id: <1558642464-9946-2-git-send-email-alan.mikhak@sifive.com>
X-Mailer: git-send-email 2.7.4
In-Reply-To: <1558642464-9946-1-git-send-email-alan.mikhak@sifive.com>
References: <1558642464-9946-1-git-send-email-alan.mikhak@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190523_131449_625506_71A0BFA2 
X-CRM114-Status: GOOD (  13.99  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:642 listed in]
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

From: Alan Mikhak <alan.mikhak@sifive.com>

Fixes: fef31ecaaf2c ("tools: PCI: Fix compilation warnings")

pcitest is currently broken due to the following compiler error
and related warning. Fix by changing the run_test() function
signature to return an integer result.

pcitest.c: In function run_test:
pcitest.c:143:9: warning: return with a value, in function
returning void
  return (ret < 0) ? ret : 1 - ret; /* return 0 if test succeeded */

pcitest.c: In function main:
pcitest.c:232:9: error: void value not ignored as it ought to be
  return run_test(test);

Signed-off-by: Alan Mikhak <alan.mikhak@sifive.com>
Reviewed-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 tools/pci/pcitest.c | 6 +++---
 1 file changed, 3 insertions(+), 3 deletions(-)

diff --git a/tools/pci/pcitest.c b/tools/pci/pcitest.c
index 5fa5c2bdd427..6dce894667f6 100644
--- a/tools/pci/pcitest.c
+++ b/tools/pci/pcitest.c
@@ -47,15 +47,15 @@ struct pci_test {
 	unsigned long	size;
 };
 
-static void run_test(struct pci_test *test)
+static int run_test(struct pci_test *test)
 {
-	long ret;
+	int ret = -EINVAL;
 	int fd;
 
 	fd = open(test->device, O_RDWR);
 	if (fd < 0) {
 		perror("can't open PCI Endpoint Test device");
-		return;
+		return -ENODEV;
 	}
 
 	if (test->barnum >= 0 && test->barnum <= 5) {
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
