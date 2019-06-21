Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id ABD174F089
	for <lists+linux-riscv@lfdr.de>; Fri, 21 Jun 2019 23:40:05 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=hWx1N9FWYRN4C66W6nxIunaqn/SNrJDXbRCYBnor0BM=; b=ja4PeB+CHepme8
	L6OHbd5frtdkmNjMm9tbl2HQuWXBa79EstJgTdjNhFcv8dx6wVNPTjofYp74G7n/5ypnAyk2vbVTj
	7/GcC4Gd0NKHnBl8i2pYCVB9BFW09UhIIvnbXTpfMDSGPdfzotgowq5xBzqYoWKG987EkdHtzdV1e
	1IDHFlusWoR+bff1YqhQxL6vInkIwebcaKSwbH8xB6+znrTVlGIHdM1P6VPy+yyyUElqab5lUYrFt
	B4lqQJyL+ENus5VUezzkJZAUb5eNm9F4SSCu1iZmrGhD6AaPu13gsn07L1eZMWabXwPONH/Dmr7b5
	Hm+t0YA0IfjCjnsMvbww==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1heRGH-0007r8-Ka; Fri, 21 Jun 2019 21:39:57 +0000
Received: from mail-pl1-x643.google.com ([2607:f8b0:4864:20::643])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1heRGE-0007qQ-RM
 for linux-riscv@lists.infradead.org; Fri, 21 Jun 2019 21:39:56 +0000
Received: by mail-pl1-x643.google.com with SMTP id bh12so3599833plb.4
 for <linux-riscv@lists.infradead.org>; Fri, 21 Jun 2019 14:39:54 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=JMoEMgrx9ABy/aeE9DljEmAzYJ+e2IWt04xwOpLWckw=;
 b=iAW0aDUcJ0jKVdqSoZM+ADII3msh5uwQR+1Wb/rOBQbCIoW7I+TEHmy7R1wsf5nrf5
 9KLaFAsd9DvnwYD/kYyjAqHLZ3cAWt6yTImzLV+bBc+oJZUHR+HHEA0wjHiJFNMwGPG/
 HbvH4Fk4EORE4Pt8EIeESxyklsFO8Pl8oKwzkUmUmMjMAY4uU6MqPDk4UMZSTPhu3/0y
 4lPPBcIOptNi+3oQWElkloY28MOcbfB8RWBzFrQ9NwLystZ+tNEwb9fKNhX/7UtfkUf0
 CSEr25T6LqV4SANHY6xyw3nRp7VrPSx86rhpX/4R7WXFrp6oI2tl6CaCsNBDle76lCvu
 Xu+A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=JMoEMgrx9ABy/aeE9DljEmAzYJ+e2IWt04xwOpLWckw=;
 b=qU3NMF6sVyl1kGsugywB+CN49R8wNk64nCTyo9S8RMItOTUBDguKJLHLVJNrfQFDrq
 asFQjOpnAn0g/vgzN2BmixeJxR4xQMCzkNyU+hEVvqxnFvXTr4P2FYjm8Zx1pvMeyXKI
 doXt8t4jpgg7SipM4/AnsAo8EXVtLDBXqdfEcfA7/QX32dg2gJFY4d0Dl0GwnrG1HXeF
 1sAWGd2+DOBZbfQnzSTwUoOAsVFhkFzATv6II6DV15tQULd/ZDG6/Jf1LhLrtWqpPNYU
 VhR8mkMsEF1abTCNLLsis3VinaxjWxgToTjHySzfBqKT+K8Tzu4sUsU80GVohKyKlfrZ
 NEMQ==
X-Gm-Message-State: APjAAAVI/0Uh69oK40xI0Rin0fR2hoNRaezxYgLKioiPPAB0QEBxHwyM
 B1iFN590Xh7DVss37ogiuec0CQ==
X-Google-Smtp-Source: APXvYqyblrrnBXKkDhx7UyIenPB3HwEhmGyd5F54TG0KrLjZjGruNROVTN0kh5NCGMpS/9u/4uyYgw==
X-Received: by 2002:a17:902:7891:: with SMTP id
 q17mr78824512pll.236.1561153194070; 
 Fri, 21 Jun 2019 14:39:54 -0700 (PDT)
Received: from localhost ([38.98.37.134])
 by smtp.gmail.com with ESMTPSA id m20sm3367922pjn.16.2019.06.21.14.39.51
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 21 Jun 2019 14:39:53 -0700 (PDT)
Date: Fri, 21 Jun 2019 14:39:42 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH 3/5] dt-bindings: riscv: convert cpu binding to json-schema
In-Reply-To: <CAL_JsqL1a-irBa4MaVzak5DrTjxiySuqTJSQOqwzymVa=Uz=gg@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1906211438210.16518@viisi.sifive.com>
References: <20190602080126.31075-1-paul.walmsley@sifive.com>
 <20190602080126.31075-4-paul.walmsley@sifive.com>
 <CAL_JsqJd6s6ta==AoxmNXdpzWL1RytSwR2P4MOfAFSEJavbt+w@mail.gmail.com>
 <CAL_JsqL1a-irBa4MaVzak5DrTjxiySuqTJSQOqwzymVa=Uz=gg@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190621_143954_903172_3BF05E9A 
X-CRM114-Status: GOOD (  11.76  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:643 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
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
Cc: Mark Rutland <mark.rutland@arm.com>, devicetree@vger.kernel.org,
 Paul Walmsley <paul@pwsan.com>, Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 21 Jun 2019, Rob Herring wrote:

> On Mon, Jun 10, 2019 at 3:46 PM Rob Herring <robh+dt@kernel.org> wrote:
> >
> > On Sun, Jun 2, 2019 at 2:01 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
> > >
> > > At Rob's request, we're starting to migrate our DT binding
> > > documentation to json-schema YAML format.  Start by converting our cpu
> > > binding documentation.  While doing so, document more properties and
> > > nodes.  This includes adding binding documentation support for the E51
> > > and U54 CPU cores ("harts") that are present on this SoC. 

[ ... ]

> > Reviewed-by: Rob Herring <robh@kernel.org>
> 
> You all have applied this now leaving the binding checks broken. I
> have a fix for one issue validating the schema, but there's a
> dependency on schemas/cpus.yaml which I gave feedback on.

Sorry about that, Rob - will follow up.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
