Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id A600086D63
	for <lists+linux-riscv@lfdr.de>; Fri,  9 Aug 2019 00:46:36 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:Message-ID:Subject:To:From
	:Date:Reply-To:Content-ID:Content-Description:Resent-Date:Resent-From:
	Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:In-Reply-To:References:
	List-Owner; bh=HOs20NhWsKZi0WBJto9lcrHmhoJiKkezIxodHVIjUq8=; b=jVf9rB5qu8Qg8G
	b0/8ADgnkACK1xMTHXdCMOn8L1TmmfzzIvUfUPhHY/MN0vT4TPzXXNfx73F9iGr0Gt9e+sjt6gAmA
	YYAi1mHVuYVtpml4/Qhs0SfTVviN/lQEvlJCcytksXBUpSCOy9bCafyCkMY2aSuYP6Prz7UAUqn6F
	PkH4iFB0Ukc8cdvOv01rOlKbMcYyBMMmhdnpMl2IeYMaKh9MKMjgfZFwM+3morGJAQeWnH75IykaI
	ucqne01p2/Un2ZNTttl2NPwav/Xi2NrkpD+5EKCz1CZ30dBX7gzC8eG/0ocTje4rs36iBOZyeK+b9
	kVaJDB65a+e5y+JfvaBg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvrB0-0005LA-U1; Thu, 08 Aug 2019 22:46:30 +0000
Received: from mail-ot1-x341.google.com ([2607:f8b0:4864:20::341])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvrAy-0005Kc-F7
 for linux-riscv@lists.infradead.org; Thu, 08 Aug 2019 22:46:29 +0000
Received: by mail-ot1-x341.google.com with SMTP id d17so125419699oth.5
 for <linux-riscv@lists.infradead.org>; Thu, 08 Aug 2019 15:46:28 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:message-id:user-agent:mime-version;
 bh=DnKHgJ9F5hokgG278SkinqqFUXS9qMAaHfTmRp0Gvqo=;
 b=Qe6yTEc5lHyuNe3Kf1y+C7yMfA4J8cPirbxyKUxqIMijShWwv71mpS+P1GMZsdk9zU
 MJL0xzY255mrh5Z41UAuis8IXpA0Pm1OL4gudKNwEuyJn9P1OBoUkfaIYdZerfsRdESX
 meXE45SpvCSSjfDpki+qZYRIvBXGe0RkZq2QHjAraxdqYJS0Qi7KZzIQie/wbETRphb4
 Gj7NMoI7icX/J6AJ44ZZKrkpQmX9/QI6HjX/UWkQ2ZhaaQC4h2XOWSk0ypBiL52vH6Iq
 dgya1rDlGzPvgI+Tl4WnLGSeo56oK45GhjZ0LZ4LT2dBYgHcv7i43Wbyv9uvWIXyjHqp
 Boxg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:user-agent
 :mime-version;
 bh=DnKHgJ9F5hokgG278SkinqqFUXS9qMAaHfTmRp0Gvqo=;
 b=cN1LpeReu8y+OA6vcBnddHK8TooaMDFeepiCa9g9v1fJt1ie7VatA4UO9D1uYZGUz8
 6kNnkZGEg+1pIuR37tl5R9BmzOiy6Vt750iiYLIVRyOdCboQt+5JAIG6P9XODNmHBLrY
 sRt3SORZ2EQYL5gWz/nRJCwjQC6knArmA7WZsOSiZ3yNQEJ+0Uk+mr/9tA31F2OqL0bO
 zitRRRgABtTd+Jdh28z3a31I5DWCynNBOftHRRbU0g0OiUBR/Q9y8q/Lrm2Ya5nW7MZb
 UaF0TKLnE/jIZRMXmVViKfW+LvWexikT1yTU0I0VSUVU2AdeFMD8XEYabL9LMkmLeQaK
 Lbow==
X-Gm-Message-State: APjAAAV4wdKKvrz6Ot1jSQbg7Be0taE/x10i87ASQ6Czg9Dn1NTD5jYH
 tv79tQ+O5Jmik3IknmRMEPay1g==
X-Google-Smtp-Source: APXvYqw/HYoZ5cytMYRaqkQHJ3Zry9RC9XfYq/QgNc6zKYhejepO4NFoWoClcga0cEGE0fNVae45yQ==
X-Received: by 2002:a02:bb05:: with SMTP id y5mr19028205jan.93.1565304387609; 
 Thu, 08 Aug 2019 15:46:27 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 c81sm148242491iof.28.2019.08.08.15.46.25
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 08 Aug 2019 15:46:26 -0700 (PDT)
Date: Thu, 8 Aug 2019 15:46:25 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: robh+dt@kernel.org, mark.rutland@arm.com, devicetree@vger.kernel.org
Subject: [PATCH] dt-bindings: riscv: fix the schema compatible string for
 the HiFive Unleashed board
Message-ID: <alpine.DEB.2.21.9999.1908081545190.15649@viisi.sifive.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190808_154628_509340_E4B1F367 
X-CRM114-Status: GOOD (  10.10  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:341 listed in]
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


The YAML binding document for SiFive boards has an incorrect
compatible string for the HiFive Unleashed board.  Change it to match
the name of the board on the SiFive web site:

   https://www.sifive.com/boards/hifive-unleashed

which also matches the contents of the board DT data file:

   https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/arch/riscv/boot/dts/sifive/hifive-unleashed-a00.dts#n13

Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
---
 Documentation/devicetree/bindings/riscv/sifive.yaml | 2 +-
 1 file changed, 1 insertion(+), 1 deletion(-)

diff --git a/Documentation/devicetree/bindings/riscv/sifive.yaml b/Documentation/devicetree/bindings/riscv/sifive.yaml
index 9d17dc2f3f84..3ab532713dc1 100644
--- a/Documentation/devicetree/bindings/riscv/sifive.yaml
+++ b/Documentation/devicetree/bindings/riscv/sifive.yaml
@@ -19,7 +19,7 @@ properties:
   compatible:
     items:
       - enum:
-          - sifive,freedom-unleashed-a00
+          - sifive,hifive-unleashed-a00
       - const: sifive,fu540-c000
       - const: sifive,fu540
 ...
-- 
2.22.0


_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
