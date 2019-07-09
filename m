Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F065563382
	for <lists+linux-riscv@lfdr.de>; Tue,  9 Jul 2019 11:33:12 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:
	Subject:To:From:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:
	References:List-Owner; bh=CqBxmy3TjrPuUef5SGaDP+WXCte2NhIVx8pGHBfd0Ds=; b=poA
	0VkUezvDFixt5/SA/dUHBFxw3B1Ew5IpA3G+/nns20L9ojyGNyiHjAMwY8wiplHrC0s1Igw6ATbOL
	25jEV9bjxyz8Glzj5z7b0duKIWsew5CsuSEoa7I+X/jfHJPmG8kd0kvGFBscpfJGl0qz+6FBIz4dY
	5KtKggvYlW8lmiOyWp+AjHI/RDigSP5lIV72teB6e47VQr5KEwUYkpRXbvZRbgetIEivHwTkna3ro
	NN/tBSqDRYdV0/AXgX135lpA6S0gTFqtjarVYoh6Nzeq555BHuKgaO9OnKixcmDD7JjaIDvcm7lyf
	8U0tb/fFB+N+DqfjMcC+TmfP/FvNMrw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hkmUh-00051T-KF; Tue, 09 Jul 2019 09:33:03 +0000
Received: from mout.kundenserver.de ([212.227.126.133])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hkmUX-0004w1-Bd
 for linux-riscv@lists.infradead.org; Tue, 09 Jul 2019 09:32:56 +0000
Received: from orion.localdomain ([95.118.92.226]) by mrelayeu.kundenserver.de
 (mreue012 [212.227.15.167]) with ESMTPSA (Nemesis) id
 1N1cvQ-1iV4bZ3MRU-0122MZ; Tue, 09 Jul 2019 11:32:41 +0200
From: "Enrico Weigelt, metux IT consult" <info@metux.net>
To: linux-kernel@vger.kernel.org
Subject: [PATCH 1/4] Makefile: rules for printing kernel architecture and
 localversion
Date: Tue,  9 Jul 2019 11:32:36 +0200
Message-Id: <1562664759-16009-1-git-send-email-info@metux.net>
X-Mailer: git-send-email 1.9.1
X-Provags-ID: V03:K1:uc03CDIsqb9vBEzIMWVZpyU2revDgAT8kF66aLNaXkdHn4yNDk8
 p4J0t/KayKdxyG9BCpkBBkU883Z/mAiidkam56XGgnJjXVus1UnoYBDpSXCbbaXo1F1J5su
 0JpsapweoM8r10i+aYj0l1EFuPRJEhzRcGNdzVlCONEBw8XcAK7B3G8+0q1mD7EpIXP+Hja
 HDptjN8qIK8MJh3DG/8yg==
X-Spam-Flag: NO
X-UI-Out-Filterresults: notjunk:1;V03:K0:5EjeTTw4q4M=:HMIXZz/XPCgvbro1gN0kmS
 0nX4PljAVK0pGfLMSmNHN9UrOjhKd2+AqneTIQGzFw5yQ/pnOsgMDtAiXFQ9zUxb2jbbbgTDV
 5yvsErr8Jz0jByZBkKxdHNlUFhTTxlXYQzYbrb5Kvo35y5gR8t7gXfkJjy3uXCdQiWy9D9NT5
 0MYsr6Jciw7CRPmjnfZaIRA0Cf8yNpzq/xvvjoc5oW+uPoREGbJZt+LeNPcit+iXMYRAE5N9O
 CT1um5XV519QyBF9W/uoVNYEmbOzo0IT5vfxv4q3GNMlKAuE/galW1VV0SpIINF8UFwKzrRON
 qqnk9AvP/PqLR1V+CRnAmlU+DtVMCZYGxMLZa2J+Dx8h+9O1RanxF07IamZafWThQZOO75swt
 jz+wS63UXk9bxQVK++XIJtpjnJ++lfCuSFHqNjSKhmefETgihL7LEJxWDkwFOmp4azkI84Iqj
 IgE9h0Y2+4wtJuVu5jrYuVXd4fvnY6huF8ei5Z7TOJloj4YdneL09kD3708MXOLlLhrzCPf8V
 MzDqAU6Xi0jew2LhFsNcycoAHgV2OZtvSCAw+aOonwcAWTc5S3iG5w95TZvi08Cgeu+uTtEHP
 rl0XDuOKIqHkUlF/oYKheO5UdNpbCmTDCyKgY//6ANXvRy5TFyBiSIPCr8g2fnDMh8Qfawnvd
 bK0aN9e+ttkHA46Gwo+Ow1qgY/MFRqb9SGzqiSCxWhE0lP3l3WPZ5Eyh6ZwfrV92dVG/UNyDF
 t1pOnuS9iki+hbpLbuNXRepne+gP8YxEHhjZLA==
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190709_023253_698198_885D9CFB 
X-CRM114-Status: UNSURE (   7.41  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [212.227.126.133 listed in list.dnswl.org]
 0.0 SPF_NONE               SPF: sender does not publish an SPF Record
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
Cc: michal.lkml@markovi.net, linux-kbuild@vger.kernel.org,
 yamada.masahiro@socionext.com, clang-built-linux@googlegroups.com,
 apw@canonical.com, joe@perches.com, linux-riscv@lists.infradead.org,
 info@metux.net
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

trivial rule to print out the kernel arch and localversion, so
external tools, like distro packagers, can easily get it.

Signed-off-by: Enrico Weigelt, metux IT consult <info@metux.net>
---
 Makefile | 6 ++++++
 1 file changed, 6 insertions(+)

diff --git a/Makefile b/Makefile
index 3e4868a..5afc3de 100644
--- a/Makefile
+++ b/Makefile
@@ -1706,6 +1706,12 @@ kernelrelease:
 kernelversion:
 	@echo $(KERNELVERSION)
 
+kernellocalversion:
+	@$(CONFIG_SHELL) $(srctree)/scripts/setlocalversion $(srctree) | sed -e 's~^\-~~'
+
+kernelarch:
+	@echo $(ARCH)
+
 image_name:
 	@echo $(KBUILD_IMAGE)
 
-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
