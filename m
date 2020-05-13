Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 60DDA1D13EB
	for <lists+linux-riscv@lfdr.de>; Wed, 13 May 2020 15:03:04 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=2vOXCv27+sFNO4m0Kx9+PwlxjUDcXRelkdMDlyLrYpM=; b=WZrY4ADdesFRL/LPP95etMIfg
	R2wfHloIxsAu7tKpO0+XHgTeZRUQeim9COb28V4tsJ4cTe0TDdCm/KEK2r2APutORTVC3UYJJj7ky
	wPzSnIHVDcj2yUopQK7TYDwCaJ8pfMJyn0nCFiW6V0cs31zxSfeM7CNUHhBtmL4QBjj+Bj2ZNM5gF
	JgW/BKsqIXYP3Crd4B8Ik0kcFT79Zr8s/d2AgA3A+pEqbH8fcz+jF02QchG0Hc277hyaajlSDmJf7
	A5ehtum/4shbiSFvgJjmbN+4MnoStk/HDnfoSI+EGhrUf82W0aIcBCQjKmCqJWqdVRprg43KfEqKi
	Fzp2JpY9Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jYr2E-0000xm-Pc; Wed, 13 May 2020 13:02:54 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jYr1n-0000d5-L9
 for linux-riscv@lists.infradead.org; Wed, 13 May 2020 13:02:29 +0000
Received: from mail-oi1-f182.google.com (mail-oi1-f182.google.com
 [209.85.167.182])
 (using TLSv1.2 with cipher ECDHE-RSA-AES128-GCM-SHA256 (128/128 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id F40F924955
 for <linux-riscv@lists.infradead.org>; Wed, 13 May 2020 13:02:26 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1589374947;
 bh=3gsu1+H8KaTAc/1/XTAg+o3iWJpqglDQYi2kGj9mDyY=;
 h=References:In-Reply-To:From:Date:Subject:To:Cc:From;
 b=GHEUHp58flz5dGi5qOoN3liccsYth1fQGfMCrkeZ0Ukng6zXWrNkLhmVsWRUDfDfL
 XjmY8es72bnP0BEoJ1esx+zSnjB8BQb7oNiKNXZm06o9In68xcVy5l0WbydN+Zx6i2
 J+VhzAIgf9YJotVvPlAHwSw7XasOcwiGNjxF1/ts=
Received: by mail-oi1-f182.google.com with SMTP id r25so21326446oij.4
 for <linux-riscv@lists.infradead.org>; Wed, 13 May 2020 06:02:26 -0700 (PDT)
X-Gm-Message-State: AGi0PuaO6zAjMLsyiN+RIBw1Wq/HrvHb7KDATv7ne5HGc00dMF2D+YcD
 6YX+LZEyV7z7wfEyMjqjZKAqZK/h3PJmpW/j4Q==
X-Google-Smtp-Source: APiQypJLdEVF0QKdCuz/qxBqkFZpgAWEBjtcdpCh6nTVaiCngqOwmIFbeeHiC/FcXGhzItL+NUf/oULbqA+pCcA59cE=
X-Received: by 2002:a05:6808:24f:: with SMTP id
 m15mr28316669oie.152.1589374946192; 
 Wed, 13 May 2020 06:02:26 -0700 (PDT)
MIME-Version: 1.0
References: <20200512204543.22090-1-robh@kernel.org>
 <158937185132.39109.17103954100758193517.b4-ty@kernel.org>
In-Reply-To: <158937185132.39109.17103954100758193517.b4-ty@kernel.org>
From: Rob Herring <robh@kernel.org>
Date: Wed, 13 May 2020 08:02:14 -0500
X-Gmail-Original-Message-ID: <CAL_Jsq+KfngSTEnP3eh6Zr9H4GUuSbyZCGXs=skbwQK0j4ZJnA@mail.gmail.com>
Message-ID: <CAL_Jsq+KfngSTEnP3eh6Zr9H4GUuSbyZCGXs=skbwQK0j4ZJnA@mail.gmail.com>
Subject: Re: [PATCH 1/5] spi: dt-bindings: sifive: Add missing 2nd register
 region
To: Mark Brown <broonie@kernel.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200513_060227_731230_495F1ABF 
X-CRM114-Status: UNSURE (   9.50  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -5.2 (-----)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-5.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: devicetree@vger.kernel.org, Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Linux USB List <linux-usb@vger.kernel.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 linux-spi <linux-spi@vger.kernel.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 linux-clk <linux-clk@vger.kernel.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, May 13, 2020 at 7:10 AM Mark Brown <broonie@kernel.org> wrote:
>
> On Tue, 12 May 2020 15:45:39 -0500, Rob Herring wrote:
> > The 'reg' description and example have a 2nd register region for memory
> > mapped flash, but the schema says there is only 1 region. Fix this.
>
> Applied to
>
>    https://git.kernel.org/pub/scm/linux/kernel/git/broonie/spi.git for-5.8
>
> Thanks!
>
> [1/1] spi: dt-bindings: sifive: Add missing 2nd register region
>       commit: b265b5a0ba15b6e00abce9bf162926e84b4323b4

You missed my ask for an ack. This is a dependency for patch 5.

Rob

