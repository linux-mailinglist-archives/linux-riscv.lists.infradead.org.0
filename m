Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 30EA21BF43
	for <lists+linux-riscv@lfdr.de>; Mon, 13 May 2019 23:53:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-Id:Date:Subject:To
	:From:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=TtEvEexJgr11BZGLf9TphkjykZeiNLb/S1ixTbOX4YQ=; b=cjarF430cWHqpL
	2l1BLAZ+L8PYylxreVD+k4v6rxdwmfEMtPsO7FZNhyN3QT2tIjzPTG2QgivS56h58VZApoFU5uJyA
	ymB6IVJt50gjeuM2F5u0GgBSnA6vTI2ML6mysycTW9nPn68m84bozvm4bRty6X38mhGICqINOGlY7
	4Hw3mCNWxRQblvIZd338TvfkVHz9pePldUy1plL25pIAPXqMXZMlG2x+Rj6MfNWdtDQl025E4zKGy
	7uDhj9EIVmeFdce4vBY+7VaHbP+aWWkFrC02zKIwdEVud1jl4ZwcfaIYALu9srnwUs1fcz22TdOut
	2mz1CHo+qV3pH/d2HibA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQIsX-0007cY-3A; Mon, 13 May 2019 21:53:01 +0000
Received: from mail-it1-x144.google.com ([2607:f8b0:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQIsU-0007cC-5H
 for linux-riscv@lists.infradead.org; Mon, 13 May 2019 21:52:59 +0000
Received: by mail-it1-x144.google.com with SMTP id q65so1675978itg.2
 for <linux-riscv@lists.infradead.org>; Mon, 13 May 2019 14:52:57 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=spz1frMWWtHxRQEXNjNtgkaY/6ePBOEmlsOI1xvvGpQ=;
 b=eUobuJlWsD+tXMvjyfP8LG+8hX5/OHN5o3k1eun6fh1/bVKcCBTfLxA/qsCoigDGHD
 rvE5NHiWuyIfArPgSX8dmmgBuG8iQVbZY94Drg2bf/mzew9kDwwP0j9V8+Np6ckuB3Wf
 ekQhRKprn4GOEdC2akwRQwV3udNz7F0aB0sIHz10SbHIP6+Ci3zJkBp47p6rV/c/6YhR
 BoqPYI4TDpmG3NWn8iw8Ejhkka5dM9cp8ekLnICbweCj5ODveLkIXYp2VePjw8jjtCJL
 /XfXbQF76c1UVpaqWX6QUREgTproaWmE6PDehw8rKUysHS3ynyOa//LDv9wkhDBFn7/Q
 1IPQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:from:to:cc:subject:date:message-id:mime-version
 :content-transfer-encoding;
 bh=spz1frMWWtHxRQEXNjNtgkaY/6ePBOEmlsOI1xvvGpQ=;
 b=eHazKVJmdphG7DvRWTesrKeMPm/z1ox87LUJKSiRP7gIi5oHgqNprEllLCCvDQLpF3
 EEmMM4tEAsC4jy1DhCDQkY636eaBa/uhS0pXtKWYlI2m5TNTSH0HUZt6oksN3Ea8T09u
 M8RhkUB/RnUPW0BYKl7+lZP+N++0zP9DdURj2gcmqUNcdZ+Dans5MOKv7eFxZkmHFFyV
 OmbXF0OPk95F/8Yn42veZ9/d3pOOlyJzsYohdQlmETfNVipDWwYkK5U1L7m5nnjlggSc
 H4jFABNHzHOO5oGOvMaXCRaOPqbQm2nULmfH9WXYCtsEvL9WnqpTxo1SNFGJcAmKe2F+
 BfIA==
X-Gm-Message-State: APjAAAUnHBVptlJCOWEg7DkP6q7ne2UQJzWz31n2CtFaWPL0XgqVf8/q
 tELPgCzCVqpSvyg8VIEskGMeFQ==
X-Google-Smtp-Source: APXvYqwWa/47VoH+KTSKqgtWgxk99Zeoy+Ir0N2WjMp/XQzWj2496079XR5FH+BJQVnuy/4XehzeLw==
X-Received: by 2002:a02:c54a:: with SMTP id g10mr17221328jaj.43.1557784376402; 
 Mon, 13 May 2019 14:52:56 -0700 (PDT)
Received: from viisi.lan (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 u11sm2973863iot.44.2019.05.13.14.52.55
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Mon, 13 May 2019 14:52:55 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
To: robh+dt@kernel.org
Subject: [PATCH v2] dt-bindings: sifive: describe sifive-blocks versioning
Date: Mon, 13 May 2019 14:51:53 -0700
Message-Id: <20190513215152.26578-1-paul.walmsley@sifive.com>
X-Mailer: git-send-email 2.20.1
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_145258_212279_7C3CBEA2 
X-CRM114-Status: GOOD (  12.43  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:144 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Paul Walmsley <paul@pwsan.com>, Wesley Terpstra <wesley@sifive.com>,
 Megan Wachs <megan@sifive.com>, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

For IP blocks that are generated from the public, open-source
sifive-blocks repository, describe the version numbering policy
that its maintainers intend to use, upon request from Rob
Herring <robh@kernel.org>.

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
Signed-off-by: Paul Walmsley <paul@pwsan.com>
Reviewed-by: Palmer Dabbelt <palmer@sifive.com>
Cc: Rob Herring <robh+dt@kernel.org>
Cc: Palmer Dabbelt <palmer@sifive.com>
Cc: Megan Wachs <megan@sifive.com>
Cc: Wesley Terpstra <wesley@sifive.com>
Cc: Mark Rutland <mark.rutland@arm.com>
Cc: devicetree@vger.kernel.org
Cc: linux-riscv@lists.infradead.org
Cc: linux-kernel@vger.kernel.org
---

This second version updates the example URL, requested by
Rob Herring <robh+dt@kernel.org>.

 .../sifive/sifive-blocks-ip-versioning.txt    | 38 +++++++++++++++++++
 1 file changed, 38 insertions(+)
 create mode 100644 Documentation/devicetree/bindings/sifive/sifive-blocks-ip-versioning.txt

diff --git a/Documentation/devicetree/bindings/sifive/sifive-blocks-ip-versioning.txt b/Documentation/devicetree/bindings/sifive/sifive-blocks-ip-versioning.txt
new file mode 100644
index 000000000000..beaa3b64084e
--- /dev/null
+++ b/Documentation/devicetree/bindings/sifive/sifive-blocks-ip-versioning.txt
@@ -0,0 +1,38 @@
+DT compatible string versioning for SiFive open-source IP blocks
+
+This document describes the version specification for DT "compatible"
+strings for open-source SiFive IP blocks.  HDL for these IP blocks
+can be found in this public repository:
+
+https://github.com/sifive/sifive-blocks
+
+IP block-specific DT compatible strings are contained within the HDL,
+in the form "sifive,<ip-block-name><integer version number>".
+
+An example is "sifive,uart0" from:
+
+https://github.com/sifive/sifive-blocks/blob/v1.0/src/main/scala/devices/uart/UART.scala#L43
+
+Until these IP blocks (or IP integration) support version
+auto-discovery, the maintainers of these IP blocks intend to increment
+the suffixed number in the compatible string whenever the software
+interface to these IP blocks changes, or when the functionality of the
+underlying IP blocks changes in a way that software should be aware of.
+
+Driver developers can use compatible string "match" values such as
+"sifive,uart0" to indicate that their driver is compatible with the
+register interface and functionality associated with the relevant
+upstream sifive-blocks commits.  It is expected that most drivers will
+match on these IP block-specific compatible strings.
+
+DT data authors, when writing data for a particular SoC, should
+continue to specify an SoC-specific compatible string value, such as
+"sifive,fu540-c000-uart".  This way, if SoC-specific
+integration-specific bug fixes or workarounds are needed, the kernel
+or other system software can match on this string to apply them.  The
+IP block-specific compatible string (such as "sifive,uart0") should
+then be specified as a subsequent value.
+
+An example of this style:
+
+    compatible = "sifive,fu540-c000-uart", "sifive,uart0";
-- 
2.20.1


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
