Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 25D028AA4C
	for <lists+linux-riscv@lfdr.de>; Tue, 13 Aug 2019 00:18:50 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=ZEzX/Ypq6rH6F88aSa6bz2o4eeRNNClaWUbk5ypWvlY=; b=iNdXmhcxJeNEZj
	OHLLj9yeDla7kRBcuwn45X0BfB/zv2+hdi9U3OZovuPpujJ5zybrGsFSGg69Kialieeilk4EK6wmf
	C5Fs0xGRzRpKUOB+h2yfTIriqsPTd8sB62dm18qBd3KyROjpDW89jm0JBhJrX5Bk0ck965b/sD/ih
	NgY3balCBZ0h8Oxb/zXAGKxjvA8sCuDo1GOFiY2iTXle6l34JxnSIGLmos1L18zvYsNb0OXCP/Szb
	5+L88ec8zak1+eKaroGhq/I+W1adeP+w0H67OSFbyoaPSlytbwAtot2lKOTtOCzKAke/YY3rt/R3K
	6MH3zDw7Aj9qcsSxDtWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hxIeG-0004X6-Mg; Mon, 12 Aug 2019 22:18:40 +0000
Received: from mail-lf1-x142.google.com ([2a00:1450:4864:20::142])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hxIeA-0004W6-TT
 for linux-riscv@lists.infradead.org; Mon, 12 Aug 2019 22:18:37 +0000
Received: by mail-lf1-x142.google.com with SMTP id x3so75447743lfc.0
 for <linux-riscv@lists.infradead.org>; Mon, 12 Aug 2019 15:18:33 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=bjZBUUnNFxwJGlVfiZU7+VhObtD1C6m0LDp2PvbJtzg=;
 b=O65SFc+mJYs+E9Cf4OIYCXxNY52bIE6S3QBlXC1V+l7rKq78RbsFJduqVoVuDazYiS
 590oN0acJw181l6fgoQpGFSHJ0GJazZVZgwyImRJxxnzjT0pIcMvwK4uhOISUD9ZtIoa
 sAmR41hpmGyE0RNHnBjaxk65Ej0DyeOcqwOWDk8A2IszJzgSbLnxU6qjZlXAxAWYPPdz
 IxC899xsC5WnI9tmxX8Pj9HE87u+ukTAM4K8ptSNuUUNBwGS3WLv6vFMeoPmr8ZNP3Li
 vGkxlmBUdUnpOWS/INHeqsEPSgX4CQv28Znv1+osdKtQ+hf43HKWIpRl7SnI18oAjXPR
 rMww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=bjZBUUnNFxwJGlVfiZU7+VhObtD1C6m0LDp2PvbJtzg=;
 b=Xifd32ICkX+ibhdIW7N4UG2tgDA2G689+C2Ec8nC5Zr0a4d9uk02UP7DXNnrsI8TfO
 cgS1dwigi0bvUevTuNbWIzaD3KeI97FfRp1jNJ2IM2ozEps1+OxdnUrS6poUBX5tGQg7
 g5U1kNJRQSOfLy1gcfvN9t8s8/Bga0VN1IQH8L7GW4EH4u5Bwe1gjrByzvikWs/6+ojN
 KVWIdZ3LQUezv6ujcxQfRvoQkh2hiEyHMOYzURhlylPRIwBQ/bxUpxV33CS0k6CZ0nID
 +Y5jGYZO67BT+xQ04Y40rLtC/pq1JPU/BuTHQhMgC3JBQyJJzLHjfT3+y9DHJ/IvgqDB
 7YvQ==
X-Gm-Message-State: APjAAAUH6QRh05WQLm2f+DUFsb7C+lmu6yEL5yy230LWgwEwaOAQEONo
 ALWTI2hO/8cSLDtHeqLKDRRFJubrvoqxMYbpBmM=
X-Google-Smtp-Source: APXvYqwJ6NXsiU2BfOlM2DiAzfb4TVZo4dKyXwC5KM6xjo+boKWcuQbtK/pWuQf3lzb4FAd8/9Gpki/uuwFCpKXJR5g=
X-Received: by 2002:ac2:46ea:: with SMTP id q10mr20552516lfo.118.1565648312549; 
 Mon, 12 Aug 2019 15:18:32 -0700 (PDT)
MIME-Version: 1.0
References: <alpine.DEB.2.21.9999.1908061929230.19468@viisi.sifive.com>
 <CAEUhbmVTM2OUnX-gnBZw5oqU+1MwdYkErrOnA3NGJKh5gxULng@mail.gmail.com>
 <CAMabmMJ3beMcs38Boe11qcsQvqY+9u=2OqA0vCSKdL=n-cK9GQ@mail.gmail.com>
 <20190812150348.GH26897@infradead.org>
In-Reply-To: <20190812150348.GH26897@infradead.org>
From: Charles Papon <charles.papon.90@gmail.com>
Date: Tue, 13 Aug 2019 00:18:22 +0200
Message-ID: <CAMabmM+YX3L-J1GCvDaC9H66YMArfs6PuKCsE_dNMBtApOxZig@mail.gmail.com>
Subject: Re: [PATCH] riscv: kbuild: drop CONFIG_RISCV_ISA_C
To: Christoph Hellwig <hch@infradead.org>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190812_151834_980200_A1F7D49F 
X-CRM114-Status: GOOD (  10.15  )
X-Spam-Score: 0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (charles.papon.90[at]gmail.com)
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.2 FREEMAIL_ENVFROM_END_DIGIT Envelope-from freemail username ends
 in digit (charles.papon.90[at]gmail.com)
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:142 listed in]
 [list.dnswl.org]
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
Cc: Atish Patra <atish.patra@wdc.com>,
 linux-riscv <linux-riscv@lists.infradead.org>, Bin Meng <bmeng.cn@gmail.com>,
 linux-kernel <linux-kernel@vger.kernel.org>,
 Paul Walmsley <paul.walmsley@sifive.com>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

> Because it it the unix platform baseline as stated in the patch.
I know that, but i'm looking for arguments why RVC could't be kept as
an option, especialy it is only an optimisation option without
behavioral/code changes.

That baseline make sense for heavy linux distributions, where you
expect everybody to compile with a baseline set of ISA extentions, to
make binary exchanges easier.
But for smaller systems, i do not see advantages having RVC forced.

On Mon, Aug 12, 2019 at 5:03 PM Christoph Hellwig <hch@infradead.org> wrote:
>
> On Thu, Aug 08, 2019 at 02:18:53PM +0200, Charles Papon wrote:
> > Please do not drop it.
> >
> > Compressed instruction extension has some specific overhead in small
> > RISC-V FPGA softcore, especialy in the ones which can't implement the
> > register file read in a asynchronous manner because of the FPGA
> > technology.
> > What are reasons to enforce RVC ?
>
> Because it it the unix platform baseline as stated in the patch.

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
