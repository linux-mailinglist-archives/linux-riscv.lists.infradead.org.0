Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6EDA3210BB
	for <lists+linux-riscv@lfdr.de>; Fri, 17 May 2019 00:51:20 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:
	Content-Transfer-Encoding:Content-Type:Cc:List-Subscribe:List-Help:List-Post:
	List-Archive:List-Unsubscribe:List-Id:To:Subject:Message-ID:Date:From:
	In-Reply-To:References:MIME-Version:Reply-To:Content-ID:Content-Description:
	Resent-Date:Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:
	List-Owner; bh=+Splz4TWSgMx3NddxtwDDFJJYe/Watmi0xPbSaFUAIk=; b=RPBuUBIivbZjJC
	ZnQAY0qINtlkPJLnbFVoI7H8e7U1O2ZxzfENAFUC4dWIrRvajC06s5w16cy+Qw6PhXkmHdFbaK+54
	9kwTv5FSjhWTyERevUbEcRFYJ0wrgSd8hSRD8ZkE7qrBjNNhbTuALEevGXkkDCJolzztP0fsSV2ae
	xwD2XIbA7hz9J/y6amTOwyp5jclslUpNeyyhzL13nURY46Al22D1PNVakpmJ70iEyJLwLAr9b3rAj
	6Mw9Ssm9Rhbgi+C/rFjJE+nGGC5/liqmt4ngg6Uotg//AUMsnjhWYa/fmD8pFEyjweAh/RvhjdvjX
	dsHj8UoGwIZweHqlGiaA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.90_1 #2 (Red Hat Linux))
	id 1hRPDZ-00089i-V3; Thu, 16 May 2019 22:51:17 +0000
Received: from mail-lf1-x12c.google.com ([2a00:1450:4864:20::12c])
 by bombadil.infradead.org with esmtps (Exim 4.90_1 #2 (Red Hat Linux))
 id 1hRPDX-00088v-9T
 for linux-riscv@lists.infradead.org; Thu, 16 May 2019 22:51:16 +0000
Received: by mail-lf1-x12c.google.com with SMTP id n22so3841892lfe.12
 for <linux-riscv@lists.infradead.org>; Thu, 16 May 2019 15:51:14 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=linux-foundation.org; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=68ArjN0wa3lf1aOiRDVUTIQK5CrzgPXu4Jev+44ZCaU=;
 b=ZkmbJ6jP3obgZQ3rn0M9QXzzM0MDNkkO2SFtqSHyLYEk5pVSWq2QI4Rb39tCRjJ/Fc
 K4gBKQT45ncSY/sNglMvHT1MI2FqYxbfh2UWo26BC0aGzbF+0Go0S2rvvamSS7QLfU7w
 wEpr6052AXt0NMlwwtDFDzu7rFOrNcLcKznj0=
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=68ArjN0wa3lf1aOiRDVUTIQK5CrzgPXu4Jev+44ZCaU=;
 b=Se54FFOtNsJC59MEWUE+z954DrGGe1kKcP/IzsCNO9uSO8Jy/w9EjvAEKMPvcz5OYF
 MFZdE6dyjTJkvlW5Zax6+LjLiUaJfbEXMKhXdNFEZRtZRCgltZ/E3M1fWT4vIDDM3szs
 LsIHraUjZDUHHmCLTgd2aGqsadDrGApdkOZZGF3OuottKWG9BdfrT1V4OzK8N/exSngq
 TYtEkVsYVJd2SErTvoaNM4KrV+w73fjAlCmJAozPMRur8WtO94bAYkIl7gHcqECGzLbA
 IkSjukthg/uOYMgZj29JH71CzsAhad1zJUo7iP3iYGcM900//nZEkOn+7r+SxqnfRezS
 uMQw==
X-Gm-Message-State: APjAAAXU7BNMpjvkng/5e0OX4fSiQxJUgHozUA1xY1NTMgZuhzGzKRHl
 FVfq5HwMncIHyWWtlNHk+W8K7jOQKZs=
X-Google-Smtp-Source: APXvYqzmFE3Ylnjg/HTmjjRo0ATuii6+bdHFZ9OcYQjKq1O+3+W+fnjkBTXGFSfr/HQAXfUAXQmGvw==
X-Received: by 2002:a19:27cc:: with SMTP id n195mr22499lfn.172.1558047071922; 
 Thu, 16 May 2019 15:51:11 -0700 (PDT)
Received: from mail-lf1-f52.google.com (mail-lf1-f52.google.com.
 [209.85.167.52])
 by smtp.gmail.com with ESMTPSA id k18sm1094851ljk.70.2019.05.16.15.51.10
 for <linux-riscv@lists.infradead.org>
 (version=TLS1_2 cipher=ECDHE-RSA-AES128-GCM-SHA256 bits=128/128);
 Thu, 16 May 2019 15:51:11 -0700 (PDT)
Received: by mail-lf1-f52.google.com with SMTP id y13so3867860lfh.9
 for <linux-riscv@lists.infradead.org>; Thu, 16 May 2019 15:51:10 -0700 (PDT)
X-Received: by 2002:ac2:59c7:: with SMTP id x7mr21576802lfn.75.1558047070605; 
 Thu, 16 May 2019 15:51:10 -0700 (PDT)
MIME-Version: 1.0
References: <CAK8P3a2+RHAReOZdo8nEvqDeC1EPj83L2Ug4JuVRiUh943AuNw@mail.gmail.com>
 <CAHk-=wgiv5ftb+dq7N8cN4n2YX3VkyzeQccywn07Xu9xhOLTSw@mail.gmail.com>
 <CAK8P3a2EEuxh3uhsqauEC_vROZ7tQHhFwxgiLUnrgtpMdb3kuA@mail.gmail.com>
 <CAHk-=wiH=vGjsW9MdWFGsgto2W+71sA4XJ7CSubpXkbpC_bGKA@mail.gmail.com>
 <1558043623.29359.44.camel@HansenPartnership.com>
 <CAK8P3a0QsURY+QrkvBh5zS12cCLYD=ssVtus_6Q_DSnB1=1y3A@mail.gmail.com>
In-Reply-To: <CAK8P3a0QsURY+QrkvBh5zS12cCLYD=ssVtus_6Q_DSnB1=1y3A@mail.gmail.com>
From: Linus Torvalds <torvalds@linux-foundation.org>
Date: Thu, 16 May 2019 15:50:54 -0700
X-Gmail-Original-Message-ID: <CAHk-=wi+CyMkQJahExx0FNtJf+cd9VqjWNx3z6Em_xW11ScViw@mail.gmail.com>
Message-ID: <CAHk-=wi+CyMkQJahExx0FNtJf+cd9VqjWNx3z6Em_xW11ScViw@mail.gmail.com>
Subject: Re: [GIT PULL] asm-generic: kill <asm/segment.h> and improve nommu
 generic uaccess helpers
To: Arnd Bergmann <arnd@arndb.de>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20190516_155115_342468_66D9C15A 
X-CRM114-Status: UNSURE (   7.47  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.1 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.1 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2a00:1450:4864:20:0:0:0:12c listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 0.0 HEADER_FROM_DIFFERENT_DOMAINS From and EnvelopeFrom 2nd level
 mail domains are different
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
X-BeenThere: linux-riscv@lists.infradead.org
X-Mailman-Version: 2.1.21
Precedence: list
List-Id: <linux-riscv.lists.infradead.org>
List-Unsubscribe: <http://lists.infradead.org/mailman/options/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=unsubscribe>
List-Archive: <http://lists.infradead.org/pipermail/linux-riscv/>
List-Post: <mailto:linux-riscv@lists.infradead.org>
List-Help: <mailto:linux-riscv-request@lists.infradead.org?subject=help>
List-Subscribe: <http://lists.infradead.org/mailman/listinfo/linux-riscv>,
 <mailto:linux-riscv-request@lists.infradead.org?subject=subscribe>
Cc: James Bottomley <James.Bottomley@hansenpartnership.com>,
 linux-arch <linux-arch@vger.kernel.org>, linux-riscv@lists.infradead.org,
 Christoph Hellwig <hch@lst.de>,
 Linux Kernel Mailing List <linux-kernel@vger.kernel.org>
Content-Type: text/plain; charset="us-ascii"
Content-Transfer-Encoding: 7bit
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Thu, May 16, 2019 at 3:49 PM Arnd Bergmann <arnd@arndb.de> wrote:
>
> Strangely, the copy I have on my local machine does have the 'S'
> flag. I sent it back to the server now.

Yup, now when I refreshed your key, I got an update, and your
signature looks all good.

              Linus

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv
