Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 37FBC86D11
	for <lists+linux-riscv@lfdr.de>; Fri,  9 Aug 2019 00:22:08 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=El0F3jseGr6iLJAFJoLqf8NZ0UOGBnw4o3vLxJaatHA=; b=QYYVKmd9KksAwf
	dnQiHVMlTE7jmq+kz8yePcMNknx+/M4crDfZnPuO0n+7ssngOLkdmGtFra/YmJzsYQEdio/9qSyK5
	MBGyzdKUCRcfJ8uJ5Jtk6suMXvMQBmBo5gINpb+mBvsgzQww1KL/IPKymq8JHMMYgYt9hJpEB4fJN
	mAGaf4xDynC8QAIO8yiYFRX0dt8sGbSYTUChN9y3nD999cHWtz0a63ks2Yd/3k5VJr9I/MgCTHVrr
	AhFSze6NwRKeYaVkEXUVnVrJUZReEOLeNv3/GBk3WJMRQ4AZm5EtNMQt4SYNXPjn+S34NreQ+J5gg
	u5BId5yaO5Li/YE39yvw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvqnK-0005ST-Pk; Thu, 08 Aug 2019 22:22:02 +0000
Received: from mail-ot1-x342.google.com ([2607:f8b0:4864:20::342])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvqnI-0005S8-9f
 for linux-riscv@lists.infradead.org; Thu, 08 Aug 2019 22:22:01 +0000
Received: by mail-ot1-x342.google.com with SMTP id b7so74844134otl.11
 for <linux-riscv@lists.infradead.org>; Thu, 08 Aug 2019 15:22:00 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=eS96mV6ducJS5h+iACNl+AvdrHOnsDHfqSig0ry4nFQ=;
 b=mqW3TeB+6HPnsUv6nkJeAjTeAtV2nKYBQGPQqDw0F30cwdgnsA4N6MWal7oMeaGZxY
 s0HmYCwADnnEg1XomUKNqGVLWxfiROIvozuWNEoOtDFLAx1VBh/f2kDgURg5n/Zz/enK
 2WC/O02+5pDIFu2M8naeWv/arRoKarrSqDrewAXq6Xsv4unSwaKVWmLtJ0SwtHQVgdU+
 FO+amaW/cJZ8EKXvZlEOQrA5ZTru0ABUSWJzFDRMe8mtFtxefmZ0MmD2OHU9nWq3hcqW
 dGqyZDiUy0CpBUbY29w+NtgDV1SF3QD3U/HbXFng5/WPL+fI2OFWsW8bEIbbkaOeVYQH
 oK8w==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=eS96mV6ducJS5h+iACNl+AvdrHOnsDHfqSig0ry4nFQ=;
 b=LSuAozHtMcFeRjbZYtZih1kpvI/TcJHm6ASnz4xapQeMq84Jfi9RhZZsqrhNMeIUNq
 PaujrPtzWxnHA5myyMV5oCRQvUeOLTEpUfNv6Wk5kB41GytkGDPLBMd9Wfib4Av/i9PZ
 /hkdm5QZ70opfrtewvZT+vUN9kf0JCt+ziw0vU/0kFMsJ7RW6AynYQSz7Lh67t29iAyn
 20e7qztcq6Xc6V2TvyMiAznxe4fJf10BTMcvDVtc8KCIYdYTNlIbantJk3hk07jwn+IX
 ylAuBZSjYUkrtKUjbjxSqE1n4QvrhyICy9Uef6rlW/kSVa9eMbwwG2fjBt6tod89dpx+
 uoxw==
X-Gm-Message-State: APjAAAVslNFAgwcAtLXhgEXzK/LjxdlgVGQNkPmGz50J+AvtO+jOvquh
 lUluJPRW67V0wvOY2y6MSewx3w==
X-Google-Smtp-Source: APXvYqw9Fj3WTqn5BsMbmHDqBC6jwokH42iENqYuTEz+CcsFMrOe5X3lwXB5WVEr+mFc7iv6Kx33qQ==
X-Received: by 2002:a02:ab99:: with SMTP id t25mr18777108jan.113.1565302919353; 
 Thu, 08 Aug 2019 15:21:59 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 k3sm10702979ioq.18.2019.08.08.15.21.58
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 08 Aug 2019 15:21:58 -0700 (PDT)
Date: Thu, 8 Aug 2019 15:21:58 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: devicetree@vger.kernel.org, robh+dt@kernel.org, mark.rutland@arm.com
Subject: [PATCH] dt-bindings: riscv: remove obsolete cpus.txt
Message-ID: <alpine.DEB.2.21.9999.1908081520100.6414@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_152200_372954_C8997A3A 
X-CRM114-Status: GOOD (  13.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:342 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-riscv@lists.infradead.org, linux-kernel@vger.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


Remove the now-obsolete riscv/cpus.txt DT binding document, since we
are using YAML binding documentation instead.

While doing so, transfer the explanatory text about 'harts' (with some
edits) into the YAML file, at Rob's request.

Link: https://lore.kernel.org/linux-riscv/CAL_JsqJs6MtvmuyAknsUxQymbmoV=G+=JfS1PQj9kNHV7fjC9g@mail.gmail.com/
Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
Cc: Rob Herring <robh@kernel.org>
---
 .../devicetree/bindings/riscv/cpus.txt        | 162 ------------------
 .../devicetree/bindings/riscv/cpus.yaml       |  12 ++
 2 files changed, 12 insertions(+), 162 deletions(-)
 delete mode 100644 Documentation/devicetree/bindings/riscv/cpus.txt

diff --git a/Documentation/devicetree/bindings/riscv/cpus.txt b/Documentation/devicetree/bindings/riscv/cpus.txt
deleted file mode 100644
index adf7b7af5dc3..000000000000
--- a/Documentation/devicetree/bindings/riscv/cpus.txt
+++ /dev/null
@@ -1,162 +0,0 @@
-===================
-RISC-V CPU Bindings
-===================
-
-The device tree allows to describe the layout of CPUs in a system through
-the "cpus" node, which in turn contains a number of subnodes (ie "cpu")
-defining properties for every cpu.
-
-Bindings for CPU nodes follow the Devicetree Specification, available from:
-
-https://www.devicetree.org/specifications/
-
-with updates for 32-bit and 64-bit RISC-V systems provided in this document.
-
-===========
-Terminology
-===========
-
-This document uses some terminology common to the RISC-V community that is not
-widely used, the definitions of which are listed here:
-
-* hart: A hardware execution context, which contains all the state mandated by
-  the RISC-V ISA: a PC and some registers.  This terminology is designed to
-  disambiguate software's view of execution contexts from any particular
-  microarchitectural implementation strategy.  For example, my Intel laptop is
-  described as having one socket with two cores, each of which has two hyper
-  threads.  Therefore this system has four harts.
-
-=====================================
-cpus and cpu node bindings definition
-=====================================
-
-The RISC-V architecture, in accordance with the Devicetree Specification,
-requires the cpus and cpu nodes to be present and contain the properties
-described below.
-
-- cpus node
-
-        Description: Container of cpu nodes
-
-        The node name must be "cpus".
-
-        A cpus node must define the following properties:
-
-        - #address-cells
-                Usage: required
-                Value type: <u32>
-                Definition: must be set to 1
-        - #size-cells
-                Usage: required
-                Value type: <u32>
-                Definition: must be set to 0
-
-- cpu node
-
-        Description: Describes a hart context
-
-        PROPERTIES
-
-        - device_type
-                Usage: required
-                Value type: <string>
-                Definition: must be "cpu"
-        - reg
-                Usage: required
-                Value type: <u32>
-                Definition: The hart ID of this CPU node
-        - compatible:
-                Usage: required
-                Value type: <stringlist>
-                Definition: must contain "riscv", may contain one of
-                            "sifive,rocket0"
-        - mmu-type:
-                Usage: optional
-                Value type: <string>
-                Definition: Specifies the CPU's MMU type.  Possible values are
-                            "riscv,sv32"
-                            "riscv,sv39"
-                            "riscv,sv48"
-        - riscv,isa:
-                Usage: required
-                Value type: <string>
-                Definition: Contains the RISC-V ISA string of this hart.  These
-                            ISA strings are defined by the RISC-V ISA manual.
-
-Example: SiFive Freedom U540G Development Kit
----------------------------------------------
-
-This system contains two harts: a hart marked as disabled that's used for
-low-level system tasks and should be ignored by Linux, and a second hart that
-Linux is allowed to run on.
-
-        cpus {
-                #address-cells = <1>;
-                #size-cells = <0>;
-                timebase-frequency = <1000000>;
-                cpu@0 {
-                        clock-frequency = <1600000000>;
-                        compatible = "sifive,rocket0", "riscv";
-                        device_type = "cpu";
-                        i-cache-block-size = <64>;
-                        i-cache-sets = <128>;
-                        i-cache-size = <16384>;
-                        next-level-cache = <&L15 &L0>;
-                        reg = <0>;
-                        riscv,isa = "rv64imac";
-                        status = "disabled";
-                        L10: interrupt-controller {
-                                #interrupt-cells = <1>;
-                                compatible = "riscv,cpu-intc";
-                                interrupt-controller;
-                        };
-                };
-                cpu@1 {
-                        clock-frequency = <1600000000>;
-                        compatible = "sifive,rocket0", "riscv";
-                        d-cache-block-size = <64>;
-                        d-cache-sets = <64>;
-                        d-cache-size = <32768>;
-                        d-tlb-sets = <1>;
-                        d-tlb-size = <32>;
-                        device_type = "cpu";
-                        i-cache-block-size = <64>;
-                        i-cache-sets = <64>;
-                        i-cache-size = <32768>;
-                        i-tlb-sets = <1>;
-                        i-tlb-size = <32>;
-                        mmu-type = "riscv,sv39";
-                        next-level-cache = <&L15 &L0>;
-                        reg = <1>;
-                        riscv,isa = "rv64imafdc";
-                        status = "okay";
-                        tlb-split;
-                        L13: interrupt-controller {
-                                #interrupt-cells = <1>;
-                                compatible = "riscv,cpu-intc";
-                                interrupt-controller;
-                        };
-                };
-        };
-
-Example: Spike ISA Simulator with 1 Hart
-----------------------------------------
-
-This device tree matches the Spike ISA golden model as run with `spike -p1`.
-
-        cpus {
-                cpu@0 {
-                        device_type = "cpu";
-                        reg = <0x00000000>;
-                        status = "okay";
-                        compatible = "riscv";
-                        riscv,isa = "rv64imafdc";
-                        mmu-type = "riscv,sv48";
-                        clock-frequency = <0x3b9aca00>;
-                        interrupt-controller {
-                                #interrupt-cells = <0x00000001>;
-                                interrupt-controller;
-                                compatible = "riscv,cpu-intc";
-                        }
-                }
-        }
diff --git a/Documentation/devicetree/bindings/riscv/cpus.yaml b/Documentation/devicetree/bindings/riscv/cpus.yaml
index c899111aa5e3..5963af8c0c11 100644
--- a/Documentation/devicetree/bindings/riscv/cpus.yaml
+++ b/Documentation/devicetree/bindings/riscv/cpus.yaml
@@ -10,6 +10,18 @@ maintainers:
   - Paul Walmsley <paul.walmsley@sifive.com>
   - Palmer Dabbelt <palmer@sifive.com>
 
+description: |
+  This document uses some terminology common to the RISC-V community
+  that is not widely used, the definitions of which are listed here:
+
+  hart: A hardware execution context, which contains all the state
+  mandated by the RISC-V ISA: a PC and some registers.  This
+  terminology is designed to disambiguate software's view of execution
+  contexts from any particular microarchitectural implementation
+  strategy.  For example, an Intel laptop containing one socket with
+  two cores, each of which has two hyperthreads, could be described as
+  having four harts.
+
 properties:
   compatible:
     items:
-- 
2.22.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
