Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 2A3A113249D
	for <lists+linux-riscv@lfdr.de>; Tue,  7 Jan 2020 12:16:11 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=kypRA7JMHk1v7MxzKCcUZ8vO8CJrvSfBF/vgrYLZzLs=; b=kqC6H1fbr9AfTrD/FqEmCV8WA
	98soHl4Tbg3GTORVh9sgZHXVBOFZFbQocfkZqQY/YjuNsZmqJNH83ggltqlaXjeH18Pr1JU2MZe97
	oaXPzl03kaA/RObkEjsoKWh6Ro+sqvi7NIvAEnw92OviPETbM4s6Wb7Vpm1D9X6mHVtXz4v5HuXP8
	LDIyM/2WhuwHh4Zdr5njcYQ2wpN71SbYfEP0+ATCjwfYTTHT1JepVdUNNZxdSGY5Lz6jnhc9IPtyF
	mGM6NDJFZjqYnxEElt4Ym4UakjFWSGwvBf0C2QEo5Nw2oYwEohuYx5rzBSpCAYQWSLx/zWSDHT+O9
	aPvWsO+oA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iomqB-0008Ks-Cm; Tue, 07 Jan 2020 11:16:03 +0000
Received: from mail-il1-x143.google.com ([2607:f8b0:4864:20::143])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iomq8-0008Jz-6q
 for linux-riscv@lists.infradead.org; Tue, 07 Jan 2020 11:16:01 +0000
Received: by mail-il1-x143.google.com with SMTP id t2so30032779ilq.9
 for <linux-riscv@lists.infradead.org>; Tue, 07 Jan 2020 03:15:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=kypRA7JMHk1v7MxzKCcUZ8vO8CJrvSfBF/vgrYLZzLs=;
 b=WAxrkLng0N51YO/HxMWdKmP3MBdFhRH67U4dYNeGCc2DeCf4y5JrR8t6Bl4Rws0uQm
 AlZe8/enQtXFoR/MO0heuEPF0/jJWV4p0xPLr9UGr1BUTC9Vvm4+8/qWV6KJoZwK1KWn
 4ALVtnFGttzFci5n+Lzz2HnlF1xy3+bqPfxhFNHzp6yrwyJa8Fq1FF9jHMI4b4DznHmC
 BXK6XbyGTVIwhXBnfGLdDFt0ChyJqBQWJtzNrhgonSiC6+b9jVvpfb7vSPP2FSqJczFI
 PHK7nSquh3JFWDZdhhVvNCUvdqRD5j5lpglbe9dnokvJp6SyNGYIo0eUVJknWudJHGRk
 6zAQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=kypRA7JMHk1v7MxzKCcUZ8vO8CJrvSfBF/vgrYLZzLs=;
 b=F+SOxjL4TOnDxxHCrMTMbQKgneoqSXjnXHu9MsW79DcTeCR0aLps6QNh5Rh4PuSRGS
 X8RfGdKq3382PszXLShAfwB/2+zYXvR9aoEx3/F/1PHjfaHuh2BJWgAIPTSZXF16x0YF
 P7A48aPyMgiN43gMOTSpu5B8AWCX2L1zvFTEg+gV05Jg1elw5IU80vXybHQsDnQL4DYW
 IRc9ZeSZZHeMnSOPyOSG4hC6cha4kFVaB6hepB2LGsH6jFsS2oQgvLbFntblMYqhXY+o
 fT2Go9GAjfwhTn3EJsz61xusw1o0DvIXBRfcktt1x0qWcB1I5n326RrJfURZF4WQLohq
 N+PA==
X-Gm-Message-State: APjAAAUAYYn7K8J8XnLj7QrYTa5s4+CEpBx7qXi/ifZA3FbzbV/0QVz6
 Beoqst+g1R44rvtbf4ocAZuXag==
X-Google-Smtp-Source: APXvYqxrIj55LYycBTrbBE+ljCYOHB9ysZ8mMBJp/6ZfUJDQG+HkGsk064dRkXUbjSZcuErja8iRng==
X-Received: by 2002:a92:5ec8:: with SMTP id f69mr91584935ilg.8.1578395757558; 
 Tue, 07 Jan 2020 03:15:57 -0800 (PST)
Received: from localhost (67-0-46-172.albq.qwest.net. [67.0.46.172])
 by smtp.gmail.com with ESMTPSA id a12sm17977316ion.73.2020.01.07.03.15.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Tue, 07 Jan 2020 03:15:57 -0800 (PST)
Date: Tue, 7 Jan 2020 03:15:56 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: Olof Johansson <olof@lixom.net>
Subject: Re: [PATCH] riscv: change CSR M/S defines to use "X" for prefix
In-Reply-To: <CAOesGMir810kVTDyoTFuhK-PdFe4J2u2VM+L8jOdO8DghAELQg@mail.gmail.com>
Message-ID: <alpine.DEB.2.21.9999.2001070314050.75790@viisi.sifive.com>
References: <20191218170603.58256-1-olof@lixom.net>
 <alpine.DEB.2.21.9999.2001031723310.283180@viisi.sifive.com>
 <CAOesGMir810kVTDyoTFuhK-PdFe4J2u2VM+L8jOdO8DghAELQg@mail.gmail.com>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: text/plain; charset=US-ASCII
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200107_031600_262489_DC1D3075 
X-CRM114-Status: GOOD (  10.55  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:143 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: Damien Le Moal <damien.lemoal@wdc.com>, Albert Ou <aou@eecs.berkeley.edu>,
 Jason Cooper <jason@lakedaemon.net>, Marc Zyngier <maz@kernel.org>,
 Daniel Lezcano <daniel.lezcano@linaro.org>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>,
 Christoph Hellwig <hch@lst.de>, Palmer Dabbelt <palmer@dabbelt.com>,
 Thomas Gleixner <tglx@linutronix.de>, linux-riscv@lists.infradead.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, 3 Jan 2020, Olof Johansson wrote:

> Sure, this does the job. I'd personally prefer consistent prefixes but
> that's just bikeshed color preferences -- this is fine.

Thanks for the ack.  For what it's worth, we're in agreement that we 
should prophylactically place RV_ prefixes on the rest of the CSR_ macro 
names.  I just would prefer that it's done outside the late -rc series, 
since it's not technically a fix.

> (Builds are still failing for some configs, but will be fixed if/when
> you pick up https://lore.kernel.org/linux-riscv/20191217040631.91886-1-olof@lixom.net/)

That one is on my radar - just haven't had a chance to review/test it 
yet.  Thanks for sending that one too! 


- Paul

