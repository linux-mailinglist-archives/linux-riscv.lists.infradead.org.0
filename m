Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id AAA4656DB1
	for <lists+linux-riscv@lfdr.de>; Wed, 26 Jun 2019 17:31:00 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=Kt70O6E4LJVJUf8rpFfXMtis7MSJ1vkl6uVJQzPnBAw=; b=ZY+F7eY7asC9tp
	xVUllv9pfPwhX/yGzUEUJLHhrcbSmnCcRnQYQv8AmbnYs8Fe6bvyvp1HLi4t3tZXLPdRGBySM5JZ6
	DE7uSC8rfd8NNTcSfrYC/zabzFsBhV32oiRQwkbTrsfbLTEz+lIHU/XEoGyfYLDyGSVWuDbha31SE
	mBg5sbXYsEMw8js/Az1K7hCsZrxbVlMEQ/PRIWocm3wnu4vhtvhhnSO1eXlIpTWlnRDiyVSwWKgu/
	E2w9B8+ZI5AuPSLdHSlEwWxiH7POqFHlL2fERT4CKi0VTM708jiUt5u7tjGkHmwYutTalQul4cxi/
	xcVINUWVtypgeirXlKzQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hg9sl-0003Nb-MV; Wed, 26 Jun 2019 15:30:47 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hg9sh-0003N5-AF
 for linux-riscv@lists.infradead.org; Wed, 26 Jun 2019 15:30:44 +0000
Received: by mail-io1-xd44.google.com with SMTP id m24so2746351ioo.2
 for <linux-riscv@lists.infradead.org>; Wed, 26 Jun 2019 08:30:42 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=47jXrca/VLnvTViduml7tRENXk9Vm4pzuTXdi0htwSI=;
 b=bRTbbNqpz27JcaELNMaS595xLsjJ2iZR7o/Zi3u9KMHMtQCVyCGoImqgSCPUjZnc9C
 LHAyaKsDhOZozOCxG75IloZD/OcQLRRSnunyLEjKyoOruiTs9odjyzrjibUnGdWgulnY
 wmOklJwNOkJWgvgCrHLVXzCg+vi7rozAUUVwDlhCZifpHsmXNr2JPArX3OlCDK3xMBOo
 QOeW46uaidFx+SfkWH5IGUx5hmKzm0J374lMyziCP5hG6eRa3Mmfk+1cxgYto8fVsrgc
 OucAX9s5pcExmgrX3P772wZIZXfgdlodYfIucoQLOs0cvhKEFCn1Hr+SYNp1ymg1p+To
 esYg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=47jXrca/VLnvTViduml7tRENXk9Vm4pzuTXdi0htwSI=;
 b=evya5bnpt5BrstOrE5PglmZF/zXdGJtS5DHFHS6xD76y30QEjj0XSFkWSM+LyJdmKQ
 DObpRTLbfr9d7R7tI29IapVwffstmURWsem7RCT76PGOuF9wUSTUR5p6kc+9DQS3xE5y
 Nbkg+m335v+eR7KZLJPSpVOGzj51gheHAuhupzD3qWhHICBnW9qoPkIEbC7df8uYEi86
 doqvVK2x8aUOT9QyBFNLs2+pQ+M83MKn8HBqWIb9jHYCuH0TxNZQgV5Bctg9WeJyfYPm
 FoJy/K6RsbVRR/jPfUTSgQ72h2FV8IiUGQnEOfxaKOXop0WYIsDJ5THmg2lbel0fwY5z
 NLvg==
X-Gm-Message-State: APjAAAVgyhmi8YIiH+yW05rWq+7KLS0yheFFUTKcQqMagbpgS/xEw6MW
 APGMD0pzqLchtN9gHQof1nmb+FEdU8Q=
X-Google-Smtp-Source: APXvYqxxv99ftWybjb752ByTOs3EepgyGpjVVV0N/HtQbeNhEIL7ps//XlR9m9QlFx9cyXF2gB9B3Q==
X-Received: by 2002:a5d:9e48:: with SMTP id i8mr5666557ioi.51.1561563042093;
 Wed, 26 Jun 2019 08:30:42 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 r139sm35785253iod.61.2019.06.26.08.30.41
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Wed, 26 Jun 2019 08:30:41 -0700 (PDT)
Date: Wed, 26 Jun 2019 08:30:40 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: linux-riscv@lists.infradead.org
Subject: [PATCH] dt-bindings: riscv: resolve 'make dt_binding_check' warnings
Message-ID: <alpine.DEB.2.21.9999.1906260829030.21507@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190626_083043_423077_0F96E44E 
X-CRM114-Status: UNSURE (   7.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: robh@kernel.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


Rob pointed out that one of the examples in the RISC-V 'cpus' YAML schema 
results in warnings from 'make dt_binding_check'.  Fix these.

While here, make the whitespace in the second example consistent with the 
first example.

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/riscv/cpus.yaml       | 26 ++++++++++---------
 1 file changed, 14 insertions(+), 12 deletions(-)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index 27f02ec4bb45..f97a4ecd7b91 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -152,17 +152,19 @@ examples:
   - |
     // Example 2: Spike ISA Simulator with 1 Hart
     cpus {
-            cpu@0 {
-                    device_type = "cpu";
-                    reg = <0>;
-                    compatible = "riscv";
-                    riscv,isa = "rv64imafdc";
-                    mmu-type = "riscv,sv48";
-                    interrupt-controller {
-                            #interrupt-cells = <1>;
-                            interrupt-controller;
-                            compatible = "riscv,cpu-intc";
-                    };
-            };
+        #address-cells = <1>;
+        #size-cells = <0>;
+        cpu@0 {
+                device_type = "cpu";
+                reg = <0>;
+                compatible = "riscv";
+                riscv,isa = "rv64imafdc";
+                mmu-type = "riscv,sv48";
+                interrupt-controller {
+                        #interrupt-cells = <1>;
+                        interrupt-controller;
+                        compatible = "riscv,cpu-intc";
+                };
+        };
     };
 ...
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
