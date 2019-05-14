Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id F421C1D0A3
	for <lists+linux-riscv@lfdr.de>; Tue, 14 May 2019 22:29:37 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=6kmgJSk3GqKC6Cz9nP9+GRuiBkpORF1tBf7s5Amq/RE=; b=oOLto0j81jiss2
	D+HtQ76XGeH0Wzcizy249VAXKuOiBuluijramXk7EnCr1GusdMQ45inMvC4AYnk4LuF8uwQU/9tka
	H7ooavLvTwgLJxVKB7BgjqzocaFgNonghgCFKzqoG0w863A0W+YEgQzV3CVNhC9kr5ZmYWJKmFixM
	+eg9sTzSQ+i16mBw2qzfetd5HFHitkdgRodB9eFep4Xl63i4iiVwfrYx5VU0QpSixNDgmKjYvRk8C
	FC6iuZXzVRBn4CTKUef46LByrxqNFX7vpaTqnkQU3TCWduFefGSuAUgkfGwmx3CeBEB3YOF8AkiLY
	olTm+TdGruxeuDNZHS7A==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQe3K-0008DW-7S; Tue, 14 May 2019 20:29:34 +0000
Received: from mail-ot1-f66.google.com ([209.85.210.66])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQe3G-0008D5-Rc
 for linux-riscv@lists.infradead.org; Tue, 14 May 2019 20:29:32 +0000
Received: by mail-ot1-f66.google.com with SMTP id f23so109709otl.9
 for <linux-riscv@lists.infradead.org>; Tue, 14 May 2019 13:29:30 -0700 (PDT)
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to:user-agent;
 bh=oPaY+Ss9+ep2GCkhb8u3t1B3H/GvEu2ypW66c2/qd9s=;
 b=hlJcQBJTLgE6F2tsLEKk7YY06mleb0MrlhlJ0mzoXk7eQDhII72Nlg4ZaIMjSpOjRC
 NqtRakxXsM7TIa825m4f4Y7HC8pmA+EAYPn4Xq5TZ7ztN486+B6MG28djjE+8vieCo5p
 wIuLoRHVA+zDCqW24STnZGfgCjbRNwbahXARz+Qv6UMhungPf9/no+La0gfY22J9k5rZ
 v9AhI1AinP46vwQqofBsFC+TSjLBYG0w+AdQkwmZOB273qA4VQF/4uxOrHdwPUNjRGXK
 F8Sd8UMqUaoDCy/0/W9ge3zoVu17zgd+7QxyV6CK3dBc0lL+qHNYqd1hkEYBNQMI5KFh
 X5ew==
X-Gm-Message-State: APjAAAU1fjdkP75cJ3notSl0G5xTzJsmjVY/TO0BSr+FuoDavhRebJsz
 9e0bGg8TtOb0ZEbg1/4OnA==
X-Google-Smtp-Source: APXvYqzvuTeT7D9lZIqV3PwgDn5MJm1tKGPk0EO3gjy5o6D/bZ1ZmxMIWQbWUaiO3rbeleX4+VOgHQ==
X-Received: by 2002:a9d:7354:: with SMTP id l20mr23489464otk.115.1557865770039; 
 Tue, 14 May 2019 13:29:30 -0700 (PDT)
Received: from localhost (24-155-109-49.dyn.grandenetworks.net.
 [24.155.109.49])
 by smtp.gmail.com with ESMTPSA id b25sm2460790otq.65.2019.05.14.13.29.29
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 14 May 2019 13:29:29 -0700 (PDT)
Date: Tue, 14 May 2019 15:29:28 -0500
From: Rob Herring <robh@kernel.org>
To: Paul Walmsley <paul.walmsley@sifive.com>
Subject: Re: [PATCH v2] dt-bindings: sifive: describe sifive-blocks versioning
Message-ID: <20190514202928.GA23497@bogus>
References: <20190513215152.26578-1-paul.walmsley@sifive.com>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190513215152.26578-1-paul.walmsley@sifive.com>
User-Agent: Mutt/1.10.1 (2018-07-13)
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190514_132930_887545_C31F155B 
X-CRM114-Status: GOOD (  10.95  )
X-Spam-Score: 0.3 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [209.85.210.66 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (robherring2[at]gmail.com)
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (robherring2[at]gmail.com)
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 0.0 RCVD_IN_MSPIKE_H3      RBL: Good reputation (+3)
 [209.85.210.66 listed in wl.mailspike.net]
 0.0 FREEMAIL_FORGED_FROMDOMAIN 2nd level domains in From and
 EnvelopeFrom freemail headers are different
 0.0 RCVD_IN_MSPIKE_WL      Mailspike good senders
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
 linux-kernel@vger.kernel.org, robh+dt@kernel.org,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, 13 May 2019 14:51:53 -0700, Paul Walmsley wrote:
> For IP blocks that are generated from the public, open-source
> sifive-blocks repository, describe the version numbering policy
> that its maintainers intend to use, upon request from Rob
> Herring <robh@kernel.org>.
> 
> Signed-off-by: Paul Walmsley <paul.walmsley@sifive.com>
> Signed-off-by: Paul Walmsley <paul@pwsan.com>
> Reviewed-by: Palmer Dabbelt <palmer@sifive.com>
> Cc: Rob Herring <robh+dt@kernel.org>
> Cc: Palmer Dabbelt <palmer@sifive.com>
> Cc: Megan Wachs <megan@sifive.com>
> Cc: Wesley Terpstra <wesley@sifive.com>
> Cc: Mark Rutland <mark.rutland@arm.com>
> Cc: devicetree@vger.kernel.org
> Cc: linux-riscv@lists.infradead.org
> Cc: linux-kernel@vger.kernel.org
> ---
> 
> This second version updates the example URL, requested by
> Rob Herring <robh+dt@kernel.org>.
> 
>  .../sifive/sifive-blocks-ip-versioning.txt    | 38 +++++++++++++++++++
>  1 file changed, 38 insertions(+)
>  create mode 100644 Documentation/devicetree/bindings/sifive/sifive-blocks-ip-versioning.txt
> 

Applied, thanks.

Rob

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
