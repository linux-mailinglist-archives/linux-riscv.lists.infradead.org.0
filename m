Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id B257A774F9
	for <lists+linux-riscv@lfdr.de>; Sat, 27 Jul 2019 01:29:58 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:MIME-Version:References:Message-ID:
	In-Reply-To:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=dNnt6B0BseXPAnXmnJpQ4wlA4GPFCXvJwdvraP9mFg0=; b=CQclebqash0BNG
	QzrhLhMwMk8ziEQOv9Lr1x3jLlWH7rIczRsE4n2vW4sOGX7JpdmxWl3xdseaz0w5oGH+02TKeVFqR
	XovM9F0RC0FqLnvUjxrsxpENWdmo/u0bExOjVEvyU73ftqJTgchWGjzmbw8MCFtENjHRPSm6CiQZE
	X3Y1xXsvlzRJAifrp+4q1sXs9+FxMpqg5ghsz3Dta/VeZLAg14yfo3awFwsAqcYZsyInNWvsn+A7d
	KhvUZ1SWFkBNJieEmlXglWGrDjMey8oG0YrffXFxcEThuFRNRD9eJczWCjG9ymqooGM0hmkItXj9v
	H/qBq3fGw48m1S/fIkDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hr9ek-0004bc-07; Fri, 26 Jul 2019 23:29:46 +0000
Received: from mail-io1-xd43.google.com ([2607:f8b0:4864:20::d43])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hr9eg-0004aq-Ci
 for linux-riscv@lists.infradead.org; Fri, 26 Jul 2019 23:29:43 +0000
Received: by mail-io1-xd43.google.com with SMTP id j6so32983456ioa.5
 for <linux-riscv@lists.infradead.org>; Fri, 26 Jul 2019 16:29:40 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=f0NauJHVqo/HIKObdVkdw9yTl/4NywZItEu7j8mg3M0=;
 b=LVruWYJsd3bjeNXq3I2xolL9voc9Yk1+77O3/kR4rln3y9Svg6v4WdWHkyaFKL0T0f
 cFfOXSawqqUdLG7bNbuZIZ4hWhi/FEM5ZaCqLQ0Alt/LtYn8sgnlnHCSKSQjF8JaxwVL
 HPlBrIWyvIwW0JBa476SDk1xrjw/VXS01l/gIp1t/nCo6I10x8XsldgLfDqlbrx43DY4
 YA5h5hXLyD6tGPppVY74MabkYpC3wmz//jlD+RN9PyFexGFTkrawNpFHSR3A5p4HWVj3
 HGn6JfMJEMRwafxo6+6gs4TXmwAs/MnXNNR9bJeNJhq+6jE/btoTJJJYbhZwKT422qC3
 jVqA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=f0NauJHVqo/HIKObdVkdw9yTl/4NywZItEu7j8mg3M0=;
 b=cUlHbYp7L3k9h3BHVx0b/7IPm4f+ZD96LSNWEk4Dhc6KBdEiunck59mj3bgBDUdDJU
 GCIBP/2Q5t/gujzl8BmI5e3cvXlkWPAwv5c7VgN/kq3/l90UhZ4vhtiJBnPAZRl37wT7
 uy9QD9aT9AS3DGotVFfMh8Xas2FLyV0XBKPjcO9y3oONzYxQOV2Sm8Sc97u6gUCgzNx/
 j6LNwuf+2/y3Y4EKxa8YUjNkRGmFD6LAveSNyZEZeW3VGGs9ajiQsHeUOKSXwYqXY+rL
 Sm1rbJp1qK7En1LNJohTGzbmSb117siGEQqVzvEcKUrmH9wkuf6krsB5gnEe510CX2sw
 valw==
X-Gm-Message-State: APjAAAUG1QfS4hmIv5VniFc3dVXZuc3fh5vs8+7qjr/60fnHz9y2vTSf
 4TPgdtjlmzp1nS3RJY8i+GSJKg==
X-Google-Smtp-Source: APXvYqzrzFt15zIbn3sWYkAdzt0egDJg9bQUJpyBfwuwX6IMgrArgwXByra2h9LIHUx49dHbxOqrAA==
X-Received: by 2002:a5d:928a:: with SMTP id s10mr64008087iom.29.1564183780127; 
 Fri, 26 Jul 2019 16:29:40 -0700 (PDT)
Received: from localhost (67-0-24-96.albq.qwest.net. [67.0.24.96])
 by smtp.gmail.com with ESMTPSA id p25sm44650795iol.48.2019.07.26.16.29.39
 (version=TLS1_3 cipher=AEAD-AES256-GCM-SHA384 bits=256/256);
 Fri, 26 Jul 2019 16:29:39 -0700 (PDT)
Date: Fri, 26 Jul 2019 16:29:38 -0700 (PDT)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Atish Patra <atish.patra@wdc.com>
Subject: Re: [PATCH 3/4] RISC-V: Support case insensitive ISA string parsing.
In-Reply-To: <a8a6be2c-2dcb-fe58-2c32-e3baa357819c@wdc.com>
Message-ID: <alpine.DEB.2.21.9999.1907261625220.26670@viisi.sifive.com>
References: <20190726194638.8068-1-atish.patra@wdc.com>
 <20190726194638.8068-3-atish.patra@wdc.com>
 <alpine.DEB.2.21.9999.1907261346560.26670@viisi.sifive.com>
 <a8a6be2c-2dcb-fe58-2c32-e3baa357819c@wdc.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190726_162942_446044_775F253F 
X-CRM114-Status: GOOD (  11.39  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d43 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
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
Cc: Anup Patel <Anup.Patel@wdc.com>, Alan Kao <alankao@andestech.com>,
 Greg Kroah-Hartman <gregkh@linuxfoundation.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 "linux-kernel@vger.kernel.org" <linux-kernel@vger.kernel.org>,
 Johan Hovold <johan@kernel.org>, Albert Ou <aou@eecs.berkeley.edu>,
 Palmer Dabbelt <palmer@sifive.com>,
 "linux-riscv@lists.infradead.org" <linux-riscv@lists.infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>, Allison Randal <allison@lohutok.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 26 Jul 2019, Atish Patra wrote:

> On 7/26/19 1:47 PM, Paul Walmsley wrote:
> > On Fri, 26 Jul 2019, Atish Patra wrote:
> > 
> > > As per riscv specification, ISA naming strings are
> > > case insensitive. However, currently only lower case
> > > strings are parsed during cpu procfs.
> > > 
> > > Support parsing of upper case letters as well.
> > > 
> > > Signed-off-by: Atish Patra <atish.patra@wdc.com>
> > 
> > Is there a use case that's driving this, or 
> 
> Currently, we use all lower case isa string in kvmtool. But somebody can have
> uppercase letters in future as spec allows it.
>
> 
> can we just say, "use
> > lowercase letters" and leave it at that?
> > 
> 
> In that case, it will not comply with RISC-V spec. Is that okay ?

I think that section of the specification is mostly concerned with someone 
trying to define "f" as a different extension than "F", or something like 
that.  I'm not sure that it imposes any constraint that software must 
accept both upper and lower case ISA strings.  

What gives me pause here is that this winds up impacting DT schema 
validation:

https://git.kernel.org/pub/scm/linux/kernel/git/torvalds/linux.git/tree/Documentation/devicetree/bindings/riscv/cpus.yaml#n41



- Paul

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
