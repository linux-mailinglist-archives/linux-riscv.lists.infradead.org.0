Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D3A433D5DA
	for <lists+linux-riscv@lfdr.de>; Tue, 11 Jun 2019 20:51:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:In-Reply-To:MIME-Version:References:
	Message-ID:Subject:To:From:Date:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=xkgq0a8mTLReSE62xa4M8/gww36uAGleeitgOGRrHJQ=; b=FgnT9NdVN/mTzo
	vJoCh5wvD4WQ2sgFkE+TqA8XViKWskXoCMaS9x+4u35UNOl4bEQkKax4R6dviuCXcjIpGIqhbRtwr
	rQL1FiyKqci1/OA1XmngsYeRjxapowUkUS8h3QgfvZridoAAyWZtcxiirfcdkCfoqAv9/84dmBgIQ
	fTmcVeXcmg9/IwATRoBSxcWb11A8ze3zmmU1mizHkRzqzNDCk3FeBmzjlOsJ1wji9jYNWYTLG3sh0
	5Wex/mUJvARl+A9/uXRR4W/Bj+hJ7fwjtiOBwbBr/+npD9WNN4ganMogP46jnm9bmqHlztJ4xY01x
	4mYN6WnsPnhcuLh2PaqA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92 #3 (Red Hat Linux))
	id 1halrb-0008LW-Tn; Tue, 11 Jun 2019 18:51:19 +0000
Received: from mail-pg1-x542.google.com ([2607:f8b0:4864:20::542])
 by bombadil.infradead.org with esmtps (Exim 4.92 #3 (Red Hat Linux))
 id 1halrY-0008LB-Fa
 for linux-riscv@lists.infradead.org; Tue, 11 Jun 2019 18:51:17 +0000
Received: by mail-pg1-x542.google.com with SMTP id p10so1613309pgn.1
 for <linux-riscv@lists.infradead.org>; Tue, 11 Jun 2019 11:51:15 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=chromium.org; s=google;
 h=date:from:to:cc:subject:message-id:references:mime-version
 :content-disposition:in-reply-to;
 bh=PeJ22s+ps5oIho5+9ErHPHmm4h1Q6yuzuN5QgKhk1zg=;
 b=jr+VzpZtE9Hr9dqRrGHIqso7zO4ZqBL0Ko3l4dpz1ZvV5hZ3YWjWr/+9fcfg6ESmuN
 PAH5i+8feaFm3uclkNliyBMZ3+pooCwSCkAhgYy4FhHsqxh9PYuApGb8DdYX33nDO0bk
 QZE7D8/mAA6anrRIqHE7jzKzW4ghg5JuWH1w4=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:message-id:references
 :mime-version:content-disposition:in-reply-to;
 bh=PeJ22s+ps5oIho5+9ErHPHmm4h1Q6yuzuN5QgKhk1zg=;
 b=lENNkx3XHY3C7eOpxvfaEHr4u5X8wvLc739bIsqheCm/pYXq32JaOGtb1Nngr2ZRMq
 S5DA4IZVM/0LuxLN0Xt9YHrlj5ycCSFO1VBzCqxPkgQTVPxuxLa4vJ9CAzi4xo8xQcCv
 Fc2RzeOCZ/YDXVP5feg9lGWHflF9DTVN8PKu08HU7k3NFg7IUXNs7+wS9wPlXMXi7RoO
 13LiNWIZsgQefXs8svXLntZAmCySv/myDPGoOimQAYZ2bRtvxr33OCsShvoM10/t0gAu
 3eIpqqOoAhiGGm890iZYl73hAu3wHk7LALW/x0Ba+kYdiW5biRFxxnl+j6gMl3xXhBbX
 sAxQ==
X-Gm-Message-State: APjAAAVtzCLCyjcRhz4WCRjV2PVBcUSLvuHq9a8xEzZyIpcoW3dcOKpY
 YJCvVWr2SiY7H8fEhYwbZgDiCA==
X-Google-Smtp-Source: APXvYqyRWJxNa094D7F6UmaLeHV7kVYYTQKVr/ynLCGNuh/7k757fcyJpkUWRFarjm3TxPPdqsuu6Q==
X-Received: by 2002:a62:6303:: with SMTP id x3mr66395386pfb.261.1560279075550; 
 Tue, 11 Jun 2019 11:51:15 -0700 (PDT)
Received: from www.outflux.net (smtp.outflux.net. [198.145.64.163])
 by smtp.gmail.com with ESMTPSA id j22sm14782152pfh.71.2019.06.11.11.51.14
 (version=TLS1_2 cipher=ECDHE-RSA-CHACHA20-POLY1305 bits=256/256);
 Tue, 11 Jun 2019 11:51:14 -0700 (PDT)
Date: Tue, 11 Jun 2019 11:51:13 -0700
From: Kees Cook <keescook@chromium.org>
To: Christoph Hellwig <hch@lst.de>
Subject: Re: [PATCH] riscv: export flush_icache_all
Message-ID: <201906111146.3BDF5928@keescook>
References: <mvm7e9spggv.fsf@suse.de>
 <20190611134945.GA28532@lst.de>
MIME-Version: 1.0
Content-Disposition: inline
In-Reply-To: <20190611134945.GA28532@lst.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190611_115116_551929_C9AC2F83 
X-CRM114-Status: GOOD (  17.77  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:542 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.0 DKIMWL_WL_HIGH         DKIMwl.org - Whitelisted High sender
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
Cc: Andreas Schwab <schwab@suse.de>, linux-riscv@lists.infradead.org,
 Palmer Dabbelt <palmer@sifive.com>, Gary Guo <gary@garyguo.net>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, Jun 11, 2019 at 03:49:45PM +0200, Christoph Hellwig wrote:
> NAK.  There is no point to export a symbol that should not generally
> exported just for a tester.

flush_icache_range() is what LKDTM uses (and has done so for years).

> 
> I think the right answer is to just don't allow a modular build of
> lkdtm.

No -- several system builders use a modular build of lkdtm to allow
for testing of "production" kernels, and then do not include lkdtm.ko
in the final image (and that image is either protected by LoadPin or
module signing to keep stray modules from appearing).

-Kees

> On Tue, Jun 11, 2019 at 12:24:32PM +0200, Andreas Schwab wrote:
> > Before 58de77545e53 ("riscv: move flush_icache_{all,mm} to cacheflush.c"),
> > flush_icache_all was a macro, but it is used by a module:
> > 
> >   ERROR: "flush_icache_all" [drivers/misc/lkdtm/lkdtm.ko] undefined!
> > 
> > Signed-off-by: Andreas Schwab <schwab@suse.de>
> > ---
> >  arch/riscv/mm/cacheflush.c | 1 +
> >  1 file changed, 1 insertion(+)
> > 
> > diff --git a/arch/riscv/mm/cacheflush.c b/arch/riscv/mm/cacheflush.c
> > index 9ebcff8ba263..4a2e5bf8b21a 100644
> > --- a/arch/riscv/mm/cacheflush.c
> > +++ b/arch/riscv/mm/cacheflush.c
> > @@ -14,6 +14,7 @@ void flush_icache_all(void)
> >  {
> >  	sbi_remote_fence_i(NULL);
> >  }
> > +EXPORT_SYMBOL(flush_icache_all);
> >  
> >  /*
> >   * Performs an icache flush for the given MM context.  RISC-V has no direct
> > -- 
> > 2.22.0
> ---end quoted text---

-- 
Kees Cook

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
