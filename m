Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B8B476ABB6
	for <lists+linux-riscv@lfdr.de>; Tue, 16 Jul 2019 17:27:03 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=428vSpiNK2jAemb3kZr2W/utsTdjsvGnt4hZXup0ZRE=; b=jmztHU+MIF6MSB
	6xD7VTeiyghapEUrtLGNO5/rNYE/6WJsAbZRXH+1vfGbKzEq7hYlnapV9h4BtnBPxAE5iMxtG+iJq
	Zpq9ByMB2S5VlzxRqEddIbhBwkug04kV8TdVN6B+yCqkZO9a7WC1xUJXAnCvH9csolDAbOIk3L+Qx
	9uvrDACT3E0Oagp0l//Db0lXsGnDDqjtm8NJzUi8mt8ggrYKXEUlYLfd37ewaFN6IvGzQhK4e1JTJ
	3Yl5GjTHJ22qL7UvHC+QUB3qlp6Vgnja7JGv9x0yzf9ckIaw/LGBX3FqyTVsd1Q4unqPxfNt2niiY
	IqaQuQ4mtUFqq6MCkQ4w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hnPM0-0000on-FW; Tue, 16 Jul 2019 15:26:56 +0000
Received: from mail-io1-xd44.google.com ([2607:f8b0:4864:20::d44])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hnPJC-0005g6-R7
 for linux-riscv@lists.infradead.org; Tue, 16 Jul 2019 15:24:06 +0000
Received: by mail-io1-xd44.google.com with SMTP id e20so10215487iob.9
 for <linux-riscv@lists.infradead.org>; Tue, 16 Jul 2019 08:24:01 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=N195P2f0us9phWu08NVADmmlZekvAMPF8Z5SqipHjkU=;
 b=UFwnonZ/cfc25F4c3cAbdHC6solwqR0l8lLv7BAeP9Ozczdhg8nGvZUpzg5Y37od+t
 Xhq8oFbJNiKcY8wa+O3h0pLxMIMjaTMb+94vSFlm1z9xCPzC3a2dp42DZuExmajJeSnW
 lHIQNUWp4FqhJHcTAgwX2SLv1lo8pDeq5vp5Eg3CjBTBMnXmqEQ0W8RPbRkISSlIthCk
 jv1bxEzIfW+XBKdww/YOIQsrxjtyP7J43c47tngACpodJTHHOHj9jg6CwatIOqGsKEw9
 V8lbFN9aabPXiEZIackgQeu3hBNIzDEGxgIEPFReyyll+Je2q4zQp8hV3c4jJUWOT+UL
 qPrw==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=N195P2f0us9phWu08NVADmmlZekvAMPF8Z5SqipHjkU=;
 b=W21dIynLW9X4y5UgcNLjnXSPq7odabjTGwDutV4QqlqUlz6W+FBJ4u8oS9iVC/Mk3K
 e2GK2Yfh+pM1BXn7u6MEpCLxZDcirw0LFeFAG5+6pihFpUJat4n6ANfwPua9VyfAAqeq
 HLlVpcjRlJRoZWxf+5UGWuoc/A0nMg3eHui9mHRvroQD8Prk29fgCUYmSsPJv/aoXJkl
 g4oIs780qJrPK/QLSRvXbAntWQw5vRWwrHPWonK9qWYPtk7NtMm3G7rzGyrPNRvhDEh8
 pKOstS8T7Buq2pDPBeHhZgGkc2gW9ndtanOoLUYUoiFOApJ2McfjufNtOxZ2xkFzeKA9
 SN7w==
X-Gm-Message-State: APjAAAVeD6g54JDtjM0vmJLRaGpakWo9g8BhK9HwtIG2SOjte255/tlC
 2jxw1sZ33Cw6Er4TkxvzE2EUmw==
X-Google-Smtp-Source: APXvYqyOxSJGHpDH9ZiCTa86Ja+vjoynyZSZ7MI6Nczc+lsODPXjGQ+sZHWd7xEI9cd/16JKEWBCQA==
X-Received: by 2002:a5e:9701:: with SMTP id w1mr32235289ioj.294.1563290640716; 
 Tue, 16 Jul 2019 08:24:00 -0700 (PDT)
Received: from localhost (67-0-62-24.albq.qwest.net. [67.0.62.24])
 by smtp.gmail.com with ESMTPSA id t133sm29445698iof.21.2019.07.16.08.23.59
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Tue, 16 Jul 2019 08:24:00 -0700 (PDT)
Date: Tue, 16 Jul 2019 08:23:59 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Rob Herring <robh@kernel.org>
Subject: Re: [PATCH] dt-bindings: riscv: Limit cpus schema to only check
 RiscV 'cpu' nodes
In-Reply-To: <CAL_JsqKmovGLxZj5jOLgXLtYD1cRHjtrQZm27Nk8cRQR9tsidg@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.1907160823330.16470@viisi.sifive.com>
References: <20190626235759.3615-1-robh@kernel.org>
 <CAL_JsqKmovGLxZj5jOLgXLtYD1cRHjtrQZm27Nk8cRQR9tsidg@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190716_082402_929812_5B4C84E4 
X-CRM114-Status: GOOD (  13.23  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d44 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: devicetree@vger.kernel.org, linux-riscv@lists.infradead.org,
 Palmer Dabbelt <palmer@sifive.com>,
 Lorenzo Pieralisi <lorenzo.pieralisi@arm.com>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 16 Jul 2019, Rob Herring wrote:

> On Wed, Jun 26, 2019 at 6:00 PM Rob Herring <robh@kernel.org> wrote:
> >
> > Matching on the 'cpus' node was a bad choice because the schema is
> > incorrectly applied to non-RiscV cpus nodes. As we now have a common cpus
> > schema which checks the general structure, it is also redundant to do so
> > in the Risc-V CPU schema.
> >
> > The downside is one could conceivably mix different architecture's cpu
> > nodes or have typos in the compatible string. The latter problem pretty
> > much exists for every schema.
> >
> > Signed-off-by: Rob Herring <robh@kernel.org>
> > ---
> >  .../devicetree/bindings/riscv/cpus.yaml       | 143 ++++++++----------
> >  1 file changed, 61 insertions(+), 82 deletions(-)
> 
> Paul, do you plan to apply this? I have several fixes to send to Linus
> if you want me to include this.

Please go ahead:

Acked-by: Paul Walmsley <paul.walmsley@sifive.com>

and thanks for asking.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
