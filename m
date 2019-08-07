Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id EEEEA83ECE
	for <lists+linux-riscv@lfdr.de>; Wed,  7 Aug 2019 03:31:55 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=Qp/NwxoanWAy5JkRcWdFZO9Zp+sjfZqCnFlPZHVyJFE=; b=jbMozcRKXqdNmJ
	PnI99KO+qq9djUKvI1TgUHptdsb2fGuEw2W4Evz6h9pQZLNov/IEMbjF6B5FOntes6yMTQBmjR0Bg
	QN0zTQPul9IM1DSJsIddwa5esLmJiNGCfsc92BYWfdUzDJfykG0tdKpPCB9n8/ezq/rAnZqkJ6nf0
	beZVqKZVKtfAhZstPUxssBrgUN1RUW/rNoGiwxHa6Mv2vqXGSeofY1lnXRPSXaQNL4xMZ1IIpE/QS
	IYDGbHcIQeBRJZKEM/G4+KScecWHThs29/kwLjRNlFNLcjmhiNW0MooebXNHP/71sTMIOgdwTV+tu
	XMo4YmONrwYXnC2jBmgQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1hvAnu-0001TU-3w; Wed, 07 Aug 2019 01:31:50 +0000
Received: from mail-ed1-x541.google.com ([2a00:1450:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1hvAnq-0001Ss-V7
 for linux-riscv@lists.infradead.org; Wed, 07 Aug 2019 01:31:48 +0000
Received: by mail-ed1-x541.google.com with SMTP id i11so20877653edq.0
 for <linux-riscv@lists.infradead.org>; Tue, 06 Aug 2019 18:31:46 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=b/BrFox5WNr6a9jYhyB3Lntbd75Uek+4PkJ2fRe/eRY=;
 b=eN+lThCXfkUJERw7rdJhWRn2cwpdu1t1q4tCQzXABpHCvfwF0/OStsolGAqjfqlZer
 iMbD+p4L/zpySavFg7fJ/ZZIN6uSGI8Pg8dyBD2uUx5WhW8uRCAMg/HGHG73hi1OFbt0
 js4j0+dF+EFXRU5yxb2TUiQYiD4soqhGLcqniPAG++ji6T9/72LytHgCbzhoXIpuRLJv
 WcAX1smbTmMS4ycS90uVmkB4nbGd8Q+8Kqov6bezhz2FOK3wbIWbJvtmnnqjBSogyOMX
 zr35to/JC86hmwq//EO/jtc/fKrrn5kmLF2IWC+Md48Svz1LebeFBZBSYsvtyeG/8aro
 QFeQ==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=b/BrFox5WNr6a9jYhyB3Lntbd75Uek+4PkJ2fRe/eRY=;
 b=KWPCZ4uhEwEstibWxDn1KBRFdM802V2u6hPO52J2ZWUxYQqc3fcfViWGEJAqCwf9q/
 HOEz8XBdtAGbDIJYQ99DynHC8NBqumPUcxlfW7cqEf50aykZyWS7esCeNdoPRG56la2E
 xyBVTMw6OogHujiyputfi4GKcKD9Mh8DptcOMbJCYZJLHD2ao4qjfGFwBo7VziHkcS0F
 qjA8MbG9kWKG9KcdeCyNBa+XMrzsne7Vq4cJQWy+bTQlTXtfXDuWgylld2jSi7niLS4t
 9H0PEotK4CUpKg9Sx4yMk8dXtPsOS7iFjuh/kyC6ncGFnjyxi0HkK6NxSPLIAJc/F6g6
 DEMg==
X-Gm-Message-State: APjAAAUZ58bmtnTiosmfUs8LKen7GzwMO1e5ZJB9jMPafHJo3/sVuKTZ
 KkxoTFH5gArnKe35qpNkr9nUNP/e4NpJ5j3Mf2w=
X-Google-Smtp-Source: APXvYqz954itviRVYYRH1Lcvjrjo0bTDMKk3wXTuLE/4oCPQDxtR1fZPZyYn/ytpyDyQcMjAdN3gNd+zl2M+vFecPCg=
X-Received: by 2002:a17:906:499a:: with SMTP id
 p26mr6115760eju.308.1565141505150; 
 Tue, 06 Aug 2019 18:31:45 -0700 (PDT)
MIME-Version: 1.0
References: <mvmr25z4toj.fsf@suse.de> <20190806204939.GA19596@infradead.org>
 <alpine.DEB.2.21.9999.1908061703100.13971@viisi.sifive.com>
In-Reply-To: <alpine.DEB.2.21.9999.1908061703100.13971@viisi.sifive.com>
From: Bin Meng <bmeng.cn@gmail.com>
Date: Wed, 7 Aug 2019 09:31:34 +0800
Message-ID: <CAEUhbmXz9EzjJvc4BQ46CGfSe-qyB0W7MEDZvABCpo5aLzXf3w@mail.gmail.com>
Subject: Re: [PATCH] Use CSR numbers instead of names
To: Paul Walmsley <paul.walmsley@sifive.com>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190806_183147_027771_2E68A649 
X-CRM114-Status: GOOD (  10.33  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider (bmeng.cn[at]gmail.com)
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
Cc: Christoph Hellwig <hch@infradead.org>, Andreas Schwab <schwab@suse.de>,
 linux-riscv <linux-riscv@lists.infradead.org>, linux-kernel@lists.kernel.org
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Aug 7, 2019 at 8:04 AM Paul Walmsley <paul.walmsley@sifive.com> wrote:
>
> On Tue, 6 Aug 2019, Christoph Hellwig wrote:
>
> > Looks good.  I've been trying to get the same patch in for about two
> > month now, maybe this one has more luck..
>
> Thanks for your patience.  If you have patches from one of your earlier
> series that you think should go in as fixes, it's helpful for us if you
> split them out from patches that are intended for the regular merge
> window.

I have already sent a similar patch (with more places fixed) on Jul 11.
https://patchwork.kernel.org/patch/11039421/

Regards,
Bin

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
