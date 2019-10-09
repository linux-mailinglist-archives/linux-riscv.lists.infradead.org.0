Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id CCC5DD1CFF
	for <lists+linux-riscv@lfdr.de>; Thu, 10 Oct 2019 01:47:01 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=R6XR3+awBb/9uCvzhxwYvVUsvY6b1XEL8swD/LjFmSk=; b=J7kb8AVmGyM9Bg
	1JWNxAqLUs0gNVbDrEZDR1q9HSKwSKiOZtAnEt78+aV6DCFwINLYdW5QquPsJLXXUvnfrbUKx2Aw5
	/RxKN+Ae1Cmzc3TIEmtkrhNKYdW3DBtCkyj5Fjx1P5kysa/BFteoFcsEC30p43VKVbbROcgMPQedz
	2oxjIjLhvxwFKvYgk7Sysz/n/+MfGF0nBC9OpwTPEbJS4zmkBZzh3RgP/CeIb2vlosrlwxNszx7mq
	PfTlCHD61ijWiLgQ+7fVcfO99J7cchOPh+04ybQwIP0vi77UxMpLsvd1zQ8Egb/nS5xOQIyHr4NpH
	BWK+MIC+XplRGWACYuaQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.2 #3 (Red Hat Linux))
	id 1iILfS-000885-5o; Wed, 09 Oct 2019 23:46:54 +0000
Received: from mail-ot1-f65.google.com ([209.85.210.65])
 by bombadil.infradead.org with esmtps (Exim 4.92.2 #3 (Red Hat Linux))
 id 1iILfP-00087j-7v
 for linux-riscv@lists.infradead.org; Wed, 09 Oct 2019 23:46:52 +0000
Received: by mail-ot1-f65.google.com with SMTP id 67so3287604oto.3
 for <linux-riscv@lists.infradead.org>; Wed, 09 Oct 2019 16:46:50 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=M+uVx1qcCdR79o4ofc5CjZQotxG1TWVUh9rieCuJiEc=;
 b=TUQyCSN/ZtVV9UhXYDnMhfeCIOZJa0mgYixRkWLINeCWAahUmPtIIdXak3bEle7BFz
 nu7+utco3SO2tVrUEZVgyFsmAgOuZX/KDNjeNSa4+1lnyNu3XfWcVBHsKIAyWBMofGpC
 NuUULQJdSa8QMOQZWUXz4KdFIk1M65SWq3GvNMScOpR/Av2eDJTG5CKWajKvGuJ4OFHM
 vWuhX7fx8+PmmvARMe0y0bYm+lofFsnuNBPB95zqFtx4W8crYD5Dzf7fx3Qrjmn/dqog
 Hv1OwmMhpe2nZx9kUT20ZiYc7lYOkcEI+yktyLNn8Dhh/28w+QGYCI9ChyH4tpI2DyX5
 mEpA==
X-Gm-Message-State: APjAAAUS3ED4H/jgtMnaekfCqYa1SvE9RhiKPij+gkvxQ7cuGIX7lrPW
 7hUPx82iMDY1qY8sRLN7KA==
X-Google-Smtp-Source: APXvYqz/n9SkOtrSQgnGTu0lp4Ci0m5qmetwpMSOC3+wUQp2ustrBx5tiex0ZXLUntj3+cQeHQ4Fqg==
X-Received: by 2002:a9d:4902:: with SMTP id e2mr5132554otf.263.1570664810148; 
 Wed, 09 Oct 2019 16:46:50 -0700 (PDT)
Received: from xps15.herring.priv (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.googlemail.com with ESMTPSA id t22sm1205672otc.9.2019.10.09.16.46.49
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Wed, 09 Oct 2019 16:46:49 -0700 (PDT)
From: Rob Herring <robh@kernel.org>
To: Paul Walmsley <paul.walmsley@sifive.com>,
 Palmer Dabbelt <palmer@sifive.com>
Subject: [PATCH v2] dt-bindings: riscv: Fix CPU schema errors
Date: Wed,  9 Oct 2019 18:46:48 -0500
Message-Id: <20191009234648.2271-1-robh@kernel.org>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191009_164651_281537_398AE950 
X-CRM114-Status: UNSURE (   8.68  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: 0.5 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.5 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.65 listed in list.dnswl.org]
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.65 listed in wl.mailspike.net]
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.2 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
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
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 Albert Ou <aou@eecs.berkeley.edu>, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

Fix the errors in the RiscV CPU DT schema:

Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml: cpu@0: 'timebase-frequency' is a required property
Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml: cpu@1: 'timebase-frequency' is a required property
Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml: cpu@0: compatible:0: 'riscv' is not one of ['sifive,rocket0', 'sifive,e5', 'sifive,e51', 'sifive,u54-mc', 'sifive,u54', 'sifive,u5']
Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml: cpu@0: compatible: ['riscv'] is too short
Documentation/devicetree/bindings/riscv/cpus.example.dt.yaml: cpu@0: 'timebase-frequency' is a required property

The DT spec allows for 'timebase-frequency' to be in 'cpu' or 'cpus' node
and RiscV is doing nothing special with it, so just drop the definition
here and don't make it required.

Fixes: 4fd669a8c487 ("dt-bindings: riscv: convert cpu binding to json-schema")
Cc: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Palmer Dabbelt <palmer@sifive.com>
Cc: Albert Ou <aou@eecs.berkeley.edu>
Cc: linux-riscv@lists.infradead.org
Signed-off-by: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/riscv/cpus.yaml       | 28 ++++++++-----------
 1 file changed, 11 insertions(+), 17 deletions(-)

diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index b261a3015f84..925b531767bf 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -24,15 +24,17 @@ description: |
 
 properties:
   compatible:
-    items:
-      - enum:
-          - sifive,rocket0
-          - sifive,e5
-          - sifive,e51
-          - sifive,u54-mc
-          - sifive,u54
-          - sifive,u5
-      - const: riscv
+    oneOf:
+      - items:
+          - enum:
+              - sifive,rocket0
+              - sifive,e5
+              - sifive,e51
+              - sifive,u54-mc
+              - sifive,u54
+              - sifive,u5
+          - const: riscv
+      - const: riscv    # Simulator only
     description:
       Identifies that the hart uses the RISC-V instruction set
       and identifies the type of the hart.
@@ -66,13 +68,6 @@ properties:
       insensitive, letters in the riscv,isa string must be all
       lowercase to simplify parsing.
 
-  timebase-frequency:
-    type: integer
-    minimum: 1
-    description:
-      Specifies the clock frequency of the system timer in Hz.
-      This value is common to all harts on a single system image.
-
   interrupt-controller:
     type: object
     description: Describes the CPU's local interrupt controller
@@ -93,7 +88,6 @@ properties:
 
 required:
   - riscv,isa
-  - timebase-frequency
   - interrupt-controller
 
 examples:
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
