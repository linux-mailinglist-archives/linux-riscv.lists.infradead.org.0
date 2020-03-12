Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id D1F3318270C
	for <lists+linux-riscv@lfdr.de>; Thu, 12 Mar 2020 03:31:29 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=Nf1770vAHPjgs0AVRH7uHKcJYCmibKaWql/j0gb33Bs=; b=Qa0ZIs08aYbWO8nNyg/5/Tt90
	NjuaSIfqvU8aVA5TuOzznMJeNx8ukPLgjcAWDKu1VHfeBJOKExlh9HoC88Bry2THWPRLP1IJuzDCc
	HcHp8OdenmvW1ARomdbZztsimS4qybAXKvqVbYG/jBaTrzswqLgToEaxnyAIBrat62xtFYwxfpht9
	us/LQlUuZj1kOnPa/Stgf9e8hm4yfuc1GKhVe/mgBqYFWYXPp6kLOp5daUlHW6wpnhjU7AdLwZQI5
	Elggk5jNKdnt/Z1LlLzcrhSuwp2zakKuOAYZYkthYrgLFIHUNNPqkPAGpECjAMm4XMYuNUixVvvoQ
	c4leq+h3w==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCDd4-0004VZ-Qg; Thu, 12 Mar 2020 02:31:22 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCDd1-0004V1-Ap
 for linux-riscv@lists.infradead.org; Thu, 12 Mar 2020 02:31:21 +0000
Received: by mail-qk1-x742.google.com with SMTP id f3so4286638qkh.1
 for <linux-riscv@lists.infradead.org>; Wed, 11 Mar 2020 19:31:16 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=Nf1770vAHPjgs0AVRH7uHKcJYCmibKaWql/j0gb33Bs=;
 b=DOLbUlYYpMerzBss5qT2unt9DnC2mRT+tZJJgYqGNmNuR3riRkgQgB8KC88LLofCx6
 /SFUQL9mP/eyXRA154dalsvOWR7mtieMpSauu8II5cTLUB8kLNKd/B71AejqSTvvA9qk
 VjzEXy7wElhq2qvpjW4X5VgMPHfke6hLqITE3kNynEv6M2yCoCC/lDM58Im9fBPxz+LM
 Tm14uvl2xFBtvnwQNDezSfY+lI2KJtL7NtEaPzgzdTw8Ri5ji4snmB2kBcUgLgcKmQPQ
 nNul2veC4Ejc0wKdi1gpbG4Q5faAqAJxB4J6Db3+cduNpE5XziUS5varMxZD+smrASyf
 GcfA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=Nf1770vAHPjgs0AVRH7uHKcJYCmibKaWql/j0gb33Bs=;
 b=WM3FPGGR1nDN+3MgWUdzFC9CEbZxjhIx+OGhLstuLj0N8CNaOEM8QKfB4h370lBQ2R
 LYXv8v86AxYQW9WnFvDjTE3DeuBn0DNuvVVibOMXMRnQdEkzdmSMTIBnMG//JYuIzKta
 YtVFAJ8U3rlgNExQA1h7ID0a0pScS0XIyUmPOAZXogfNLTuSmU5WsfJze8vsJetjphvy
 AfUfSgTiO89oEilQiBgrTo/MTSojKxlNCKyUJpoRkCM0O/TQlfHgd6n0Jg/KfbeZZSpF
 2uDv2x02kNGKbjZqVlPnrFe1UwrDVztPj7nUJ/qZydoExpwlM5HoaWEe+ZzwiITEoKgl
 QMWQ==
X-Gm-Message-State: ANhLgQ2XSMscE6RK3usmkconmD6jd93Zy0rISzqYyEd/2YxpsXsOjp5C
 k/IHdio/WwGTJ4EorySMXg8pw8Fnu8pxcj6Nz5X9Pw==
X-Google-Smtp-Source: ADFU+vvpd5b+sdet2H+L9PrwvJ3OZmaHdW7Qzz8B/eoifKzVQUo+sznUkE89HzQf7tdtXQI0EAsmUYNhkwUjrdhfokY=
X-Received: by 2002:a05:620a:6d9:: with SMTP id
 25mr5564793qky.457.1583980275702; 
 Wed, 11 Mar 2020 19:31:15 -0700 (PDT)
MIME-Version: 1.0
References: <1583224900-25824-1-git-send-email-vincent.chen@sifive.com>
 <mhng-cf4b7d3b-9841-44a1-9ffd-ac7f4cdeb75d@palmerdabbelt-glaptop1>
In-Reply-To: <mhng-cf4b7d3b-9841-44a1-9ffd-ac7f4cdeb75d@palmerdabbelt-glaptop1>
From: Vincent Chen <vincent.chen@sifive.com>
Date: Thu, 12 Mar 2020 10:31:03 +0800
Message-ID: <CABvJ_xh4UOZvF__hqBEj9DS1DbRm9qHHtKgM0ZSnKeT7JQDJMQ@mail.gmail.com>
Subject: Re: [PATCH] tty: serial: Add CONSOLE_POLL support to SiFive UART
To: Palmer Dabbelt <palmer@dabbelt.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_193119_437614_A230F763 
X-CRM114-Status: GOOD (  19.81  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID_EF          Message has a valid DKIM or DK signature from
 envelope-from domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: Greg KH <gregkh@linuxfoundation.org>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-serial@vger.kernel.org,
 jslaby@suse.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, Mar 7, 2020 at 2:13 AM Palmer Dabbelt <palmer@dabbelt.com> wrote:
>
> On Tue, 03 Mar 2020 00:41:40 PST (-0800), vincent.chen@sifive.com wrote:
> > Add CONSOLE_POLL support for future KGDB porting.
> >
> > Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> > ---
> >  drivers/tty/serial/sifive.c | 27 +++++++++++++++++++++++++++
> >  1 file changed, 27 insertions(+)
> >
> > diff --git a/drivers/tty/serial/sifive.c b/drivers/tty/serial/sifive.c
> > index d5f81b98e4d7..acdbaca4de36 100644
> > --- a/drivers/tty/serial/sifive.c
> > +++ b/drivers/tty/serial/sifive.c
> > @@ -818,6 +818,29 @@ static int __init sifive_serial_console_setup(struct console *co, char *options)
> >       return uart_set_options(&ssp->port, co, baud, parity, bits, flow);
> >  }
> >
> > +#ifdef CONFIG_CONSOLE_POLL
> > +static int sifive_serial_poll_get_char(struct uart_port *port)
> > +{
> > +     struct sifive_serial_port *ssp = port_to_sifive_serial_port(port);
> > +     char is_empty, ch;
> > +
> > +     ch = __ssp_receive_char(ssp, &is_empty);
> > +     if (is_empty)
> > +             return NO_POLL_CHAR;
> > +
> > +     return ch;
> > +}
> > +
> > +static void sifive_serial_poll_put_char(struct uart_port *port,
> > +                                     unsigned char c)
> > +{
> > +     struct sifive_serial_port *ssp = port_to_sifive_serial_port(port);
> > +
> > +     sifive_serial_console_putchar(port, c);
> > +     __ssp_wait_for_xmitr(ssp);
>
> So we still have that TX watermark bug in the SiFive UARTs.  If this function
> is supposed to wait until the word is actually out on the line then this isn't
> sufficient, but if it's just supposed to wait until the next write won't block
> then this is fine.
>
> I'm not really a serial person, so mabye someone else knows?  For those
> unfamiliar with the issue, there's a pretty good description in the patch to
> fix it
>
>     https://github.com/sifive/sifive-blocks/pull/90
>
I read the description is this patch and it is very clear to
understand the issue.
Thanks for your sharing.

In this case, the __ssp_wait_for_xmitr() is used to prevent the word in the
TX FIFO buffer from being corrupted by the next write. Therefore, I
think it might
be sufficient to check thetxdata.full bit.

Thanks for your comment.

