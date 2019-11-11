Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 5EEF8F81E5
	for <lists+linux-riscv@lfdr.de>; Mon, 11 Nov 2019 22:09:49 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=tLSWhw3jDG6BB61fh+QXUbI3s/4H3KOPcO1E+5Z9Xlk=; b=cRykiIKJenl561
	1SRbxkuXSamgY2WQMRZndpjBrdQ4RXHr17XeTtQzBPZdHcPSsHNq/oiWI20Vf3ej5m+XOrWn8MEPu
	FInYndqfEvYrVKWyfmEgj+IKvtoHRotwPcpqofmFDVm2tLOU2nL0io3/0y33SnpYLu+emYXrOQVsb
	KTIYUh9CUsF+KlbohJwXqO3cfQZJE0jZ8f03BqQyOsd7IiwPXFy7dx1sjkEzpq2MLNLYvFTlsDH0v
	SQ/n84efalaJMxgP+y+bF2GQ8QauEiDIo+uTv0Dk08xJsM0+bBv9MsRG8wRlQwB3+5PZ1VOJgDRMv
	8aM1eDCIk08Sj86tU3wg==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iUGwP-0008Su-8Z; Mon, 11 Nov 2019 21:09:41 +0000
Received: from mail-lf1-x144.google.com ([2a00:1450:4864:20::144])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iUGwE-0008EJ-V4
 for linux-riscv@lists.infradead.org; Mon, 11 Nov 2019 21:09:32 +0000
Received: by mail-lf1-x144.google.com with SMTP id q28so11001523lfa.5
 for <linux-riscv@lists.infradead.org>; Mon, 11 Nov 2019 13:09:29 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=iHSEG4DClXubyHOt3t2tdpDOQlrHJ64gHfdeM+gLICY=;
 b=C0byJPAHyBGELNR8VxwingUMAz9SgITb+A9AjnUdlNbZN9If1XFd42A9WqMnybvxSh
 0xLiQLCshpJ61VXki7XNugUcsdTCSnlP9Uq5ZvPtpwpXSh0oF/NEQUSxl30OzkfQZhqn
 1rf/q3MlN+w9M3x5JJsgY/AKPYTzGwbGoib87YokicnBfZgpLs1wXPr9Y9SpAD004Vpc
 6eDlSOScgt1RgLLp75LmDJ1HFnQwHPq2IYG+5NGSbdCgOJG4spodRKfaDMd6ziILXev2
 RIhm/RbObZ1Dj6FfGK7ro1/9OeFAFam69eF05Ix8bUzPjkHTLXqiKHkU0rFiMpVWLzrf
 Y+uQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=iHSEG4DClXubyHOt3t2tdpDOQlrHJ64gHfdeM+gLICY=;
 b=TcNtJj9XCskieHmGQfelZ+KZ85OcjO88xeRQ2OASbbL02UaedwrZpaeD7zlwYlSSK+
 2foPh5YP+US5xFsX/lwMagM7SiLDsXXv890ILWlO32UCAR6AogA3OrS8j5qLKz+jaU2k
 yRiPZBvCzCVT3i68HhDp20tsOnxOyXRisom2nOmpmnZH3aPjmFP1FKUrQ3+N8zBUkTHK
 rgbgEVZSF9rq73WT63fpt/DC46JtA4tM9mpyOMpjtVNVGbSzinG9erIGKGii3LFMfwgB
 pz6UdJXXNEbP9HiRlKDyemfQGr6KisrHIjo1UOYnmgba3D/O7rKBzcOdyBA/Du/yUGE0
 zsvA==
X-Gm-Message-State: APjAAAUSMqnr3F9IIpuxE8PsdRha/C1NzLFyaJoWX3Tmmf03GFSHAbE+
 bFDomtrFMhj5Uc+yCeN/HVMoXaY/ySf8AA8yJ/0wKQ==
X-Google-Smtp-Source: APXvYqyOV+qMajgujL1ZnUhT/5i+HYiizrcV+RZBGO/EpSCa9X8F8143Pct1qwA+SxxRp1H6OvOStCg/EzXoXYMk7qs=
X-Received: by 2002:ac2:5305:: with SMTP id c5mr9157574lfh.55.1573506568166;
 Mon, 11 Nov 2019 13:09:28 -0800 (PST)
MIME-Version: 1.0
References: <1573493889-22336-1-git-send-email-alan.mikhak@sifive.com>
 <20191111203743.GA25876@lst.de>
In-Reply-To: <20191111203743.GA25876@lst.de>
From: Alan Mikhak <alan.mikhak@sifive.com>
Date: Mon, 11 Nov 2019 13:09:17 -0800
Message-ID: <CABEDWGyMrDnuR+AzazHqpiHC9NrHFoVcW5iFREOey04Hv7xLqw@mail.gmail.com>
Subject: Re: [PATCH RFC] PCI: endpoint: Add NVMe endpoint function driver
To: Christoph Hellwig <hch@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191111_130931_010651_77979904 
X-CRM114-Status: UNSURE (   9.21  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:144 listed in]
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

On Mon, Nov 11, 2019 at 12:37 PM Christoph Hellwig <hch@lst.de> wrote:
>
> On Mon, Nov 11, 2019 at 09:38:09AM -0800, Alan Mikhak wrote:
> > A design goal is to not modify the Linux NVMe target driver
> > at all.
>
> As I told you before that is not a "goal" but a fundamental mistake and
> against the design philosophy of all major Linux subsystems.  Please fix
> your series to move all command parsing to the code based on flags for
> fabrics vs PCIe in the few places where they significantly differ.

Thanks Christoph. Let me repeat what I think your comment is saying to me.
You prefer all parsing for nvme command received from host over PCIe
to be removed from nvme function driver and added to existing fabrics
command parsing in nvme target code with new flags introduced to
indicate fabrics vs. PCIe.

Any more thoughts?

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
