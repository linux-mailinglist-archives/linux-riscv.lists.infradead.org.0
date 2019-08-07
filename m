Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4481F8446F
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 08:22:56 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:List-Subscribe:List-Help:
	List-Post:List-Archive:List-Unsubscribe:List-Id:Message-Id:Date:Subject:To:
	From:Reply-To:Cc:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=mxe/EJlUoUizp9ravyHV6YWpo8cdRkLQG95IwTmMF20=; b=eOJlLgRVWKrR78
	RT8lpUvda6KFjLQqPWjDGmEO9PBu6X3ogl86RnUMSu3ke1E70ypi1Q/ovkZz2i2DKIxpnVPMng2P3
	wb2BhmMGBv/P7BCGVjevRd7nPkbg4Vhtar1hpX2/si74iKwsKKcpiHWvdPhLkPz0XiDtmvlRR7Ug0
	4G6z+Yb7M2lf2z2TCm8dxSW1rkLnPWn+STCp98ea/BdXnV2cLyr5864vV17rjI6IwdTKUn+bFTilK
	e/insGIjwc7cJU8QhklqtBm8ReXdNTEPYuF8Jl5L7p1AhnQdTog51roxuXg8pdtWw/CwYjXIe1thB
	zfCYdbZzzabVxG3zC6bg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvFLV-0001bY-Nt; Wed, 07 Aug 2019 06:22:49 +0000
Received: from mail-pl1-x644.google.com ([2607:f8b0:4864:20::644])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvFLS-0001b1-5a
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 06:22:47 +0000
Received: by mail-pl1-x644.google.com with SMTP id w24so39109151plp.2
 for <linux-riscv@lists.infradead.org>; Tue, 06 Aug 2019 23:22:45 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=from:to:subject:date:message-id;
 bh=kPrp8nG0QEUeUMz0Ak8tH6QVQCe9QZAzvRu9tkMhvlo=;
 b=gU1EKsK1Xyi6hcBW6jyVX8/FHdkfrg/w6z63scbu08I6eQ7OAaNRJPgW9ruJX4/Y+K
 z2IlG3Rg9ftGpfxRuzTtAeQiZn7z1cPxoumMQSsF6F6cXwXGtDx0m2VWa0lB2BbfwNfM
 u+iuU7VF0waiurTMx7rL876gKo4yT7AH1UDdc87OwayRN3VGyzsKdHylvAzzEGOk740i
 +ctWa4dcQsWKWHqdhTApg7mhRAsV0llo6gh24iycRdfyuq5NKMAYTVx4EL0RK6exYjYg
 HN71UKBcPweK27Vas50YA4tT3EVPrWkvFVuokAZck0OFCvTgYcp9/gGNZ2mQR99SXUjQ
 XHbw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:subject:date:message-id;
 bh=kPrp8nG0QEUeUMz0Ak8tH6QVQCe9QZAzvRu9tkMhvlo=;
 b=uYk8M2lMms578zveJ4yewx89orvGRLNXafDwk3BXY3DHCqy6u420lVLsoXuwZWlbib
 LB0z6pVCBXUFZdhzP0yVgP5Fodvmib+xAtlYxg4fKE2/v3fOU6UPu8KFpgTnGiYFRgd0
 3H0cRbfX1zU76KgRo+LLXuqxhxXCF5WYX7gsg6frvc6nJlobvAMnzRZa+LKoN+hZbJul
 LmtkoYC30pJHQoXp2QYwk9qwIfr0JoB4wcwoVEf2/POYwMxRBEufxXM2nlRjuH3O7nIZ
 J5iQLAMDtGur8Xq+vZKhm1kplw0BeFU+okSTN+g5OeCUao4cw6V+TinzI1tzKu6n0vNQ
 +2BQ==
X-Gm-Message-State: APjAAAU/tILuX6jaMnGAuQpwEwBH1QSgYa79M72Oykeh+DCtVjNdBXng
 Zj8LKBfDjpFWGZQ6y8CVrBk=
X-Google-Smtp-Source: APXvYqxSbOLXgQl6/SQk96QnmwJwXxYdXa/z4z0jNJd2HaSUW02GPmODddxX9YrVdZTnTWGGTmJC1w==
X-Received: by 2002:aa7:81d9:: with SMTP id c25mr7795660pfn.255.1565158965373; 
 Tue, 06 Aug 2019 23:22:45 -0700 (PDT)
Received: from localhost.localdomain (unknown-224-80.windriver.com.
 [147.11.224.80])
 by smtp.gmail.com with ESMTPSA id 85sm95310585pfv.130.2019.08.06.23.22.44
 (version=TLS1 cipher=AES128-SHA bits=128/128);
 Tue, 06 Aug 2019 23:22:44 -0700 (PDT)
From: Bin Meng <bmeng.cn@gmail.com>
To: Albert Ou <aou@eecs.berkeley.edu>, Palmer Dabbelt <palmer@sifive.com>,
 Paul Walmsley <paul.walmsley@sifive.com>, devicetree@vger.kernel.org,
 linux-kernel@vger.kernel.org, linux-riscv@lists.infradead.org
Subject: [PATCH] riscv: dts: sifive: Add missing "clock-frequency" to
 cpu0/cpu1 nodes
Date: Tue,  6 Aug 2019 23:22:40 -0700
Message-Id: <1565158960-12240-1-git-send-email-bmeng.cn@gmail.com>
X-Mailer: git-send-email 1.7.1
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_232246_237590_2E5C6303 
X-CRM114-Status: UNSURE (   8.04  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:644 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bmeng.cn[at]gmail.com)
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add the missing "clock-frequency" property to the cpu0/cpu1 nodes
for consistency with other cpu nodes.

Signed-off-by: Bin Meng <bmeng.cn@gmail.com>
---

 arch/riscv/boot/dts/sifive/fu540-c000.dtsi | 2 ++
 1 file changed, 2 insertions(+)

diff --git a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
index 42b5ec2..4befc70 100644
--- a/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
+++ b/arch/riscv/boot/dts/sifive/fu540-c000.dtsi
@@ -22,6 +22,7 @@
 		#address-cells = <1>;
 		#size-cells = <0>;
 		cpu0: cpu@0 {
+			clock-frequency = <0>;
 			compatible = "sifive,e51", "sifive,rocket0", "riscv";
 			device_type = "cpu";
 			i-cache-block-size = <64>;
@@ -37,6 +38,7 @@
 			};
 		};
 		cpu1: cpu@1 {
+			clock-frequency = <0>;
 			compatible = "sifive,u54-mc", "sifive,rocket0", "riscv";
 			d-cache-block-size = <64>;
 			d-cache-sets = <64>;
-- 
2.7.4


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
