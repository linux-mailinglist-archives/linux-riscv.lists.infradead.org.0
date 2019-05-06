Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 106961488D
	for <lists+linux-riscv@lfdr.de>; Mon,  6 May 2019 12:49:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:MIME-Version:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:References:
	In-Reply-To:Message-Id:Date:Subject:To:From:Reply-To:Content-ID:
	Content-Description:Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc
	:Resent-Message-ID:List-Owner;
	bh=+RyPpF9cQzS0QR+1G8h0Js7TbLck3+88M7bEaFWavRI=; b=gwvkWdacF7Owg5deAJpkedB5Wu
	Z0yt8bKov9bpsuvUDnwhtRSEFmfe3Mz25oQwInNmw47+RsyiRBBJ1ybunuQ/ar8Yq6+l1cbhM1yjA
	oj0kQsrru8M661qOCAKtCtrk1BbebTl23dxkDORg8434IsQqSfP9pMtLHrMLBBZj+nHnXV1gErZV6
	LqbD89HfFcsqbae+ku21S7W5w5LaS8d7SNosBJYCvWVHKTMMUlwQdnPRF7QHsQLKgRo2Mx4A+oqr/
	6Lh5OzDxfPe/sqgPYLsz4G4gywtD4vMfjhCVFiy2kev+02kECDDE6sosH+k655Tp14idxDkD00VIU
	Dxf8aD6w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hNbBM-0003s4-PG; Mon, 06 May 2019 10:49:16 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hNbBJ-0003r8-PH
 for linux-riscv@lists.infradead.org; Mon, 06 May 2019 10:49:15 +0000
Received: by mail-pg1-x542.google.com with SMTP id t187so2145585pgb.13
 for <linux-riscv@lists.infradead.org>; Mon, 06 May 2019 03:49:13 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:in-reply-to:references;
 bh=y8299RwRcUp2oS13ZRZK7TA/HszNxbKnoI7RGJSnP08=;
 b=lYP8wvoE19ZYmyOYZuDXJacfw4A1+502jqMeNzNiJgTCyc+IuOMjro6yztuhqU9C2K
 Qc7qJbMc912ZkDQFYKSLGf3HOuEYDcRnsUVCpdRjLIZeOoV2Dg3icuVZz/jYVo2gaRVw
 bUCD7F6VsxUV/Rm6A9ez5Nt1IMv3pJPJyRIFs+EPFxqT3wyVthFzDxLfiXhUY63lZejf
 KSkBq/LbvZBxPBD3GBpBvwak7tT13Xv6rtjTqE4fpU7P5s+qZsJVneb5/Qv4IZ6t942K
 /ny6byUOkjhK9Ce68vnHM0KVfEbZoKC49VZn/d0BGw39MhI/DTnbUf8cwFvreCYN5O15
 WRrg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:in-reply-to
 :references;
 bh=y8299RwRcUp2oS13ZRZK7TA/HszNxbKnoI7RGJSnP08=;
 b=qU4KH7GLF7d/mxYCjMnQoiyxZt1cEZJ3rDkuiQpneNnS4o6tR8ZkvUazh7iFExWFxJ
 6tRhMFCQTCzp6tBS5523ZEgti42pxwT3aXZrPZ4gV0EPZxQjY8700yWqAiiJ2+3vgkpu
 QzMaDSts5hJ7U9UMt4YPf1M9WvkQtGTl22Ixq3HLRh62ag16WgdP9MCbI7XRqgOj+Iz2
 4TVWdYEe95EOe522ntY6ll7DU580/90iIxgWCKTe3TRu00YByq4mhuRN9Uk70HXnxaKQ
 TEcKr8d0z6kaCMXfx/ytIBEkKtXWWR56lbilhBtHoZPwWL6hsG+zwZ+dwxjy7Ho+hF68
 hKOg==
X-Gm-Message-State: APjAAAXQu6shLWOBrdlA49M6w2mWoM0BNxSUeGNeJ+4HTyaJmYEysi3g
 KZLoJLjUYX2c+Q0b7EA0hsl97cmD+HY=
X-Google-Smtp-Source: APXvYqx3bcXFZvHNp3BOLXeUXt0/2CVp+dpci37goTgDm1+WEAz/uPfvxVtLr+d0yHLCyi5ZM1OU0A==
X-Received: by 2002:a63:c104:: with SMTP id w4mr30672242pgf.409.1557139752529; 
 Mon, 06 May 2019 03:49:12 -0700 (PDT)
Received: from buildserver-90.open-silicon.com ([114.143.65.226])
 by smtp.googlemail.com with ESMTPSA id
 p67sm21662257pfi.123.2019.05.06.03.49.08
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-SHA bits=128/128);
 Mon, 06 May 2019 03:49:11 -0700 (PDT)
From: Yash Shah <yash.shah@sifive.com>
To: linux-riscv@lists.infradead.org, devicetree@vger.kernel.org,
 palmer@sifive.com
Subject: [PATCH v3 1/2] RISC-V: Add DT documentation for SiFive L2 Cache
 Controller
Date: Mon,  6 May 2019 16:18:39 +0530
Message-Id: <1557139720-12384-2-git-send-email-yash.shah@sifive.com>
X-Mailer: git-send-email 1.9.1
In-Reply-To: <1557139720-12384-1-git-send-email-yash.shah@sifive.com>
References: <1557139720-12384-1-git-send-email-yash.shah@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190506_034913_830705_D96238CE 
X-CRM114-Status: GOOD (  12.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: mark.rutland@arm.com, aou@eecs.berkeley.edu, linux-kernel@vger.kernel.org,
 afd@ti.com, sachin.ghadi@sifive.com, Yash Shah <yash.shah@sifive.com>,
 robh+dt@kernel.org, paul.walmsley@sifive.com
MIME-Version: 1.0
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Add device tree bindings for SiFive FU540 L2 cache controller driver

Signed-off-by: Yash Shah <yash.shah@sifive.com>
---
 .../devicetree/bindings/riscv/sifive-l2-cache.txt  | 51 ++++++++++++++++++++++
 1 file changed, 51 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/riscv/sifive-l2-cache.txt

diff --git a/Documentation/devicetree/bindings/riscv/sifive-l2-cache.txt b/Documentation/devicetree/bindings/riscv/sifive-l2-cache.txt
new file mode 100644
index 0000000..73d8f19
--- /dev/null
+++ b/Documentation/devicetree/bindings/riscv/sifive-l2-cache.txt
@@ -0,0 +1,51 @@
+SiFive L2 Cache Controller
+--------------------------
+The SiFive Level 2 Cache Controller is used to provide access to fast copies
+of memory for masters in a Core Complex. The Level 2 Cache Controller also
+acts as directory-based coherency manager.
+All the properties in ePAPR/DeviceTree specification applies for this platform
+
+Required Properties:
+--------------------
+- compatible: Should be "sifive,fu540-c000-ccache" and "cache"
+
+- cache-block-size: Specifies the block size in bytes of the cache.
+  Should be 64
+
+- cache-level: Should be set to 2 for a level 2 cache
+
+- cache-sets: Specifies the number of associativity sets of the cache.
+  Should be 1024
+
+- cache-size: Specifies the size in bytes of the cache. Should be 2097152
+
+- cache-unified: Specifies the cache is a unified cache
+
+- interrupts: Must contain 3 entries (DirError, DataError and DataFail signals)
+
+- reg: Physical base address and size of L2 cache controller registers map
+
+Optional Properties:
+--------------------
+- next-level-cache: phandle to the next level cache if present.
+
+- memory-region: reference to the reserved-memory for the L2 Loosely Integrated
+  Memory region. The reserved memory node should be defined as per the bindings
+  in reserved-memory.txt
+
+
+Example:
+
+	cache-controller@2010000 {
+		compatible = "sifive,fu540-c000-ccache", "cache";
+		cache-block-size = <64>;
+		cache-level = <2>;
+		cache-sets = <1024>;
+		cache-size = <2097152>;
+		cache-unified;
+		interrupt-parent = <&plic0>;
+		interrupts = <1 2 3>;
+		reg = <0x0 0x2010000 0x0 0x1000>;
+		next-level-cache = <&L25 &L40 &L36>;
+		memory-region = <&l2_lim>;
+	};
-- 
1.9.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
