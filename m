Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56D61383A2
	for <lists+linux-riscv@lfdr.de>; Fri,  7 Jun 2019 07:01:15 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=q9f7I5mfXXtdD/JqwLWkEtMjkX2iXqyhrHGBx+oTGNw=; b=Yr2GL1GVtu0Zke
	sgP7dAhiuj6AN7K9GXAf03ftU5dt7AbUXqvfHyoVQYzDXMaYvwr+I0et8Fl9YMP5pA29/QTwftM3p
	NC56taD+va/Wr4H3hIquSck+kwgXG2rD+uXUVhx9lEy7AIYedthnZ87KmYesOOBN3vTHsW1sIVDFk
	EmwHncMcXV8z/VulohljVY6FwG5ASoXWWES3qYAYg8YGuZPKA1VZVx94bp0q4kTOl60XChzINmjaL
	HnT8oTJ76t8K8Qe9vDq/q0gKw6J6Nzwj0PZD16ddEmkSQz6kipLX5/YXPeCNQAmii6H5fCswX1RkS
	o0vvdYsbA6JKmFckYHbw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hZ6zs-0000Tv-9y; Fri, 07 Jun 2019 05:01:00 +0000
Received: from mail-pl1-x641.google.com ([2607:f8b0:4864:20::641])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hZ6zo-0000T5-Kj
 for linux-riscv@lists.infradead.org; Fri, 07 Jun 2019 05:00:57 +0000
Received: by mail-pl1-x641.google.com with SMTP id a93so337982pla.7
 for <linux-riscv@lists.infradead.org>; Thu, 06 Jun 2019 22:00:56 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=GNyxhCfsORr2e6M8vPY8+L5gnSVQwdktACAugcErG1s=;
 b=TNIHxn+tFESTWzJW+ZyuBRPd3t6RRyEnrDKP4AiawT/1wDdQyioePTAqbomtN0wWN2
 y1c0b+3ePB/bOyDr+kf8D84Vc1txJKud22aFGd2KVgCwyqnLylvrnJWDrXvj33vqGOpN
 OjLtZ+kqyLxgTCVJxkSpI71SYb/v4U6fH1gaOaHKHbcc70mxuZu/GuXAVp81oMqIknE8
 2kQSUVCdXR68/ViRhMKfv/UXz7kH2otBS6Bo8LA9tb6J9JCEoXc5+bFUv1vYHdHC0Lt7
 iVr6dKcezKhC5Aj5b9OFbBiu3Cf7MLLnlZu19VtFVi87q4n7ztQFWsGbPzSbdF/5GGoX
 HjWg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=GNyxhCfsORr2e6M8vPY8+L5gnSVQwdktACAugcErG1s=;
 b=WlOffwPHSxPeqXcbzTUp5iIHeP8sxha8/wtVELYW5mlZcnGr2cxwzj6vvu1+BJ5sh3
 mplGLMMnYCN0NMUo0vbPvSO5llD/RDiduMondsUU6ROOSZFn+UCn762Ak6H+J0W/iD3C
 c3VNHPLt+Oj8Yfj+jE+ktaD6dv0B3OmsPB4VIbva+znInb3kq7YYfbUs4DDQoHhP9vcj
 OzOK7TqYVWV63td68FL/L862k4T5LOGKCWQlJSmO7oL1a97urI7zZaM0H/A7sbkiXXkb
 qsAxmXhp16UxdhEtE/LpUYH9LuZrbaIFKliSMR+CSnRdvfQiKzo/ZxJ316qwq7FLXir1
 c24Q==
X-Gm-Message-State: APjAAAX2n2FChsCC/x9Su9M7OImizKrmb3mU0HGLn7Ml5cBRNFSuJcxf
 n1/yLHdRGNg5laXhxEMlyxbJQA==
X-Google-Smtp-Source: APXvYqyUw+DSN9BiUBvaRMwQnFBxQ6SFZJjWJHMVUssQoXJy4hDGI7eMn36g4CBZ3Y53pZ456i1wZA==
X-Received: by 2002:a17:902:d715:: with SMTP id
 w21mr54153246ply.234.1559883655599; 
 Thu, 06 Jun 2019 22:00:55 -0700 (PDT)
Received: from localhost ([14.141.105.52])
 by smtp.gmail.com with ESMTPSA id 10sm811396pfh.179.2019.06.06.22.00.53
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Thu, 06 Jun 2019 22:00:54 -0700 (PDT)
Date: Thu, 6 Jun 2019 22:00:51 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH v6 5/7] RISC-V: Parse cpu topology during boot.
In-Reply-To: <20190529211340.17087-6-atish.patra@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1906062159380.28147@viisi.sifive.com>
References: <20190529211340.17087-1-atish.patra@wdc.com>
 <20190529211340.17087-6-atish.patra@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190606_220056_711766_5BDCB2B6 
X-CRM114-Status: GOOD (  10.36  )
X-Spam-Score: 1.3 (+)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (1.3 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:641 listed in]
 [list.dnswl.org]
 1.5 RCVD_IN_SORBS_WEB      RBL: SORBS: sender is an abusable web server
 [14.141.105.52 listed in dnsbl.sorbs.net]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
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
Cc: Mark Rutland <mark.rutland@arm.com>,
 "Rafael J. Wysocki" <rafael@kernel.org>,
 "Peter Zijlstra \(Intel\)" <peterz@infradead.org>,
 Catalin Marinas <catalin.marinas@arm.com>,
 Linus Walleij <linus.walleij@linaro.org>, Palmer Dabbelt <palmer@sifive.com>,
 Will Deacon <will.deacon@arm.com>,
 Mauro Carvalho Chehab <mchehab+samsung@kernel.org>,
 linux-riscv@lists.infradead.org, Ingo Molnar <mingo@kernel.org>,
 Anup Patel <anup@brainfault.org>, Russell King <linux@armlinux.org.uk>,
 Morten Rasmussen <morten.rasmussen@arm.com>, devicetree@vger.kernel.org,
 Albert Ou <aou@eecs.berkeley.edu>, Rob Herring <robh+dt@kernel.org>,
 Thomas Gleixner <tglx@linutronix.de>, linux-arm-kernel@lists.infradead.org,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>, linux-kernel@vger.kernel.org,
 Jeremy Linton <jeremy.linton@arm.com>, Otto Sabart <ottosabart@seberm.com>,
 Sudeep Holla <sudeep.holla@arm.com>, "David S. Miller" <davem@davemloft.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, 29 May 2019, Atish Patra wrote:

> Currently, there are no topology defined for RISC-V.
> Parse the cpu-map node from device tree and setup the
> cpu topology.
> 
> CPU topology after applying the patch.
> $cat /sys/devices/system/cpu/cpu2/topology/core_siblings_list
> 0-3
> $cat /sys/devices/system/cpu/cpu3/topology/core_siblings_list
> 0-3
> $cat /sys/devices/system/cpu/cpu3/topology/physical_package_id
> 0
> $cat /sys/devices/system/cpu/cpu3/topology/core_id
> 3
> 
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> Acked-by: Sudeep Holla <sudeep.holla@arm.com>

Looks reasonable to me.

Acked-by: Paul Walmsley <paul.walmsley@sifive.com>

We're assuming, on the RISC-V side, that these patches will go in via 
another tree.


- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
