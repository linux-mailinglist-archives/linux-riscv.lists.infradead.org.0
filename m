Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 90E07F8247
	for <lists+linux-riscv@lfdr.de>; Mon, 11 Nov 2019 22:33:48 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=8J9eKk12NpD67wYvoFKNsPmNOMM5Tb9IZ14X2VMClHQ=; b=CVawHB/AWiLH+f
	QK4y9IO/ss8ION59VkNZlmeAevVM5QsWLYT+7nLUmY/Kjvqho3vD47y0Z/Z6cL8SvTnEYy21FlPQr
	rRq+UWStRoQ2qM296sj9foK3Qi3L80p1KbJyvesi/LQE0FVnIXvycb9i2/b1wVIXfyVpl5A52vhx/
	pFsI/XI+HiWXr2f/TG1Cq7waN2/SIWIslX5KWudifx4TVNi5ZGc91EsQpFzWgxnoMEUhZ5CPoBk4s
	UIfcpBLiQBhsP8kvLQ9AsYNxOkhJJRpa0syDSST4tlKDWez+7RTJd2oZkjTfGykUGKwEu8D6qXxGY
	9G2CsIjHVcdRgwMj9QDA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUHJZ-0000Ls-Np; Mon, 11 Nov 2019 21:33:37 +0000
Received: from mail-lj1-x243.google.com ([2a00:1450:4864:20::243])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUHJW-0000Kd-0I
 for linux-riscv@lists.infradead.org; Mon, 11 Nov 2019 21:33:35 +0000
Received: by mail-lj1-x243.google.com with SMTP id 139so15412138ljf.1
 for <linux-riscv@lists.infradead.org>; Mon, 11 Nov 2019 13:33:33 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=EkuJdAUqLhO37Xog7hFtb+aT8vazqfXgcjtA7SyhWEM=;
 b=k4eOYsri0w6XOlZCdf7P084yo6O7L1TJstF6Pu+hSlk7vW3lwXpd2MzO0Ilq2GKM9G
 875XCJMh8bIDrXJyWLgAyisOk8QUDFGc+8VNRGP2WbGsPZ1JMy4JohvrVaFO02oAn+cG
 GT84K4jMd2C/Toq2BlvzMC3eGYdlzGljIb8UTxWPVbTtMANq/Re6Rd43fxVq5JnuhBX4
 1GKpNuxprveZ+p5cNgvazNJl9pJawzxbeMl5ugX7ZTx+ZI7h5/1jJHNumbzTKcln1oGV
 0dzztyfuHQHOlrRrPQqvUBcZw3rljLp4z4V2sHehPmt670i8GGWzYnYjVVmwqbF9k7MN
 nnUQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=EkuJdAUqLhO37Xog7hFtb+aT8vazqfXgcjtA7SyhWEM=;
 b=Coxbm5Wc3RcDa5X15o/jH0gjMSXNgnbqJy8BqddPIrTEfbKA3IelwZhw0c8Wa501To
 bef6/6BqhP5s5K17IIg/0W/+0jpWu1ErHyhmzsvMmW1BmF4PqfOFJqGEmaalfGXuSmUM
 wFpCDN/V5EUNfDRmhezD7aywXb177ejx7KRjtILHoJ4c2XhYDiRcw26X0yUlKk/DYj65
 C21/jAZMyeTYhqdFhhe+MgkIiHFTTseihx9s2pzfTrKT5mzW+4F55C0OZMbdHaXT/SHZ
 wdjfTXzVFZZPD040nvh0+dqCgih2bq9D/Nm6/GhWtx9+4JZ6/DShirG6pUbOw0J5oaEW
 Bktg==
X-Gm-Message-State: APjAAAVMWK0lY5O+fnBxGNuQnZWNDaLMnMPgnqptdMWX1+JFsOIAkdN/
 iuyGBxlv/3m+PNm328oF1NNtO8vlhrELo72TxuUYlA==
X-Google-Smtp-Source: APXvYqzatbulSOotOeb73f+mEEd8AbnaVu+WC83YXOlDUc5Ps3ZfCa7y58nNWXYjZgHlfIqIWwGHKGsT3XLrSqRGFdw=
X-Received: by 2002:a05:651c:20a:: with SMTP id
 y10mr17533980ljn.76.1573508011119; 
 Mon, 11 Nov 2019 13:33:31 -0800 (PST)
MIME-Version: 1.0
References: <1573493889-22336-1-git-send-email-alan.mikhak@sifive.com>
 <20191111203743.GA25876@lst.de>
 <CABEDWGyMrDnuR+AzazHqpiHC9NrHFoVcW5iFREOey04Hv7xLqw@mail.gmail.com>
 <20191111211503.GA26588@lst.de>
In-Reply-To: <20191111211503.GA26588@lst.de>
From: Alan Mikhak <alan.mikhak@sifive.com>
Date: Mon, 11 Nov 2019 13:33:20 -0800
Message-ID: <CABEDWGzmagoEsCHQkDVEVG=myxNhX97Hm8A0BKdEkLc_7zrZWw@mail.gmail.com>
Subject: Re: [PATCH RFC] PCI: endpoint: Add NVMe endpoint function driver
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_133334_052111_2F9EB4C8 
X-CRM114-Status: GOOD (  14.45  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:243 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: lorenzo.pieralisi@arm.com, linux-kernel@vger.kernel.org,
 linux-nvme@lists.infradead.org, Kishon Vijay Abraham I <kishon@ti.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Paul Walmsley <paul.walmsley@sifive.com>,
 Bjorn Helgaas <bhelgaas@google.com>, linux-riscv@lists.infradead.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Mon, Nov 11, 2019 at 1:15 PM Christoph Hellwig <hch@lst.de> wrote:
>
> On Mon, Nov 11, 2019 at 01:09:17PM -0800, Alan Mikhak wrote:
> > Thanks Christoph. Let me repeat what I think your comment is saying to me.
> > You prefer all parsing for nvme command received from host over PCIe
> > to be removed from nvme function driver and added to existing fabrics
> > command parsing in nvme target code with new flags introduced to
> > indicate fabrics vs. PCIe.
>
> At least for all the common commands, yes.  For Create / Delete SQ/CQ
> I am not entirely sure how to best implement them yet as there are
> valid arguments for keeping it entirely in the PCIe frontend or for
> having them in common code, and we'll need to figure out which weight
> more heavily.

I will look into moving all common commands to nvme target code.
It might take a bit of time and review for me to figure it out. In the meantime,
please look at the rest of the code even though its structure may not be
desirable for upstream acceptance. These are the type of comments that
I seek.

>
> > Any more thoughts?
>
> I'd love to eventually find time to play with this code.  Do you run
> it on unrelease SiFive hard cores, or is there a bitstream for a common
> FPGA platform available?-

I run it on an internal platform meant for verifying our PCIe endpoint
hardware. I use that platform to develop new functionality to enable,
simplify, and promote the integration of our PCIe endpoints into larger
systems. As far as I know, there is no public bitstream available since
the platform is for internal use.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
