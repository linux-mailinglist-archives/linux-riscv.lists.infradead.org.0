Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 9B85D1BEF9
	for <lists+linux-riscv@lfdr.de>; Mon, 13 May 2019 23:07:13 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ptmdXeJvEKCG3smGyUCGQmX1GO0FbBj7C5XRSU3gnDE=; b=a2nYP+J2rwkzyD
	xwzjEgZUhRirIgHv6EzsgvWjjc2CYjg9a0UW3P7Ue7A8v0JOo+6FQF8uR/lVOGe9hV8QkhryTidVp
	Ssyemfy4TTaMmmdxiwF7/Un941LbbfUnrb88I5Ht4Dt2erxadk0+uEvcXfet6eOblkwqr4sHuLukd
	d7ZtzMFiMHXqro2gQ3BCWHYf32YzkT9ucca6CuUXpKSkoiiRT54E+ioK5e1H7EwdYreesQVYRC8jV
	T1eKsttcRDJtPJcRiCi5IJmv4usPTgb67khgL0IWMtkzzSqYreQeR1rWs6uqymMUEHEwvMekK3zMh
	A9Mz/y98t0vdaRbrIhJg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hQIAA-0001QO-LY; Mon, 13 May 2019 21:07:10 +0000
Received: from mail-io1-xd2e.google.com ([2607:f8b0:4864:20::d2e])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hQIA7-0001Pq-Db
 for linux-riscv@lists.infradead.org; Mon, 13 May 2019 21:07:08 +0000
Received: by mail-io1-xd2e.google.com with SMTP id p2so11268498iol.2
 for <linux-riscv@lists.infradead.org>; Mon, 13 May 2019 14:07:06 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=+7m8qAQjBviaFmOghs6Z+97Gn0Ch4ti3J4o9pemJXns=;
 b=moy9hST8u3nZL8K7X9LmUOb8sPFjKOZk9jjU7eXuqiU+rrXYV1JBnO24vrOKZO6Ly2
 1Mge2VulaUA068g32/5UvGe2Gaf7cRcv/9Q0E1GEBQIRu3pJGtfuAxDe0Z/MAT9zghwr
 SPEDzdu68/OGdeXkJY6u/QCMEQdFFEOdaG/7Z930tzvmGpEJB680G797FIRNJGxe14cl
 ZvTWtSAcgbSB2llJ2wy38UOvx07Nhko1YRrL8ccK8492ipBnnmcq0BSFNaYHB7vpH7pF
 nzJjFa5Xh+Wk5Yi7uZDsUfD5o/EfLNJ+mRniDrilmgVo7dYEgx9ZKd4OfLQL0mzYQAOX
 36UA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=+7m8qAQjBviaFmOghs6Z+97Gn0Ch4ti3J4o9pemJXns=;
 b=OU4Ct9Mws6vt/kzb+70pPN70Y9qx1bw5pnhGbVNhJGAyA/PvZvll2wLoXrzEqeX6ha
 g6quzrqlZOlF7GHzNIpxTSe7CSJH74gAKQnToOcz4e5qIjgawJyN6YdkwCAS/yeSTjWn
 2gMYjkymrAyAQ8EIxSGnp8Wcgc8fSWw0ZivO+vtp+6rzWT99dF8x10rT86+UPk4mLXyK
 YlH1MQIpn+gLjBXcTwP3GKGRjdp9tmOIgH00xyyNYNtnLX18CwwSnOtrIp0mn5ETfyby
 o5LFhc8XKLkT5f1/vXyr/Sj5eABkGi9F9XMon+1eyodG4koNkDqz7HWjw0lPBg0htpaA
 gFoQ==
X-Gm-Message-State: APjAAAXAS7Ktj2D8c/wQaDJsBB6z+zunNc6mSNwJV9zjecmbfE5myOJg
 RkF2D57BsFn0yzOBchPSSz/Kew==
X-Google-Smtp-Source: APXvYqzAKBcFsS+Y7adHO16lbwFC8l2Evh0Cd9l2abi8zINYBOvpufFAj53P8LJXw8+H5xm3l6EJtA==
X-Received: by 2002:a6b:c386:: with SMTP id
 t128mr16804601iof.167.1557781626383; 
 Mon, 13 May 2019 14:07:06 -0700 (PDT)
Received: from localhost (c-73-95-159-87.hsd1.co.comcast.net. [73.95.159.87])
 by smtp.gmail.com with ESMTPSA id
 p78sm300323itp.35.2019.05.13.14.07.05
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Mon, 13 May 2019 14:07:05 -0700 (PDT)
Date: Mon, 13 May 2019 14:07:05 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Rob Herring <robh+dt@kernel.org>
Subject: Re: [PATCH] dt-bindings: sifive: describe sifive-blocks versioning
In-Reply-To: <CAL_JsqJRdjoTo2hGrKWvcyer18wt9N6w0nkfa9xx_e2xJ6pkYg@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1905131406480.21198@viisi.sifive.com>
References: <alpine.DEB.2.21.9999.1811211704520.16271@viisi.sifive.com>
 <CAL_JsqJRdjoTo2hGrKWvcyer18wt9N6w0nkfa9xx_e2xJ6pkYg@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190513_140707_482488_98A5A33A 
X-CRM114-Status: UNSURE (   7.31  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2e listed in]
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
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Megan Wachs <megan@sifive.com>,
 linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org


On Mon, 13 May 2019, Rob Herring wrote:

> I just noticed this was never re-spun and applied. We now have
> bindings in tree referring to it though.

Will send an updated version shortly.

- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
