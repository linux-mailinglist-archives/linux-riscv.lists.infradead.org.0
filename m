Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 56FC917CD02
	for <lists+linux-riscv@lfdr.de>; Sat,  7 Mar 2020 09:51:42 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:In-Reply-To:
	Content-Type:MIME-Version:References:Message-ID:Subject:To:From:Date:Reply-To
	:Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=w386IgZP5UoldX4Fhlp8HcC2/wPg/XfJrJp4uOXk/gU=; b=Z0TJNKqdj9Xdr6RiYDznfeumW
	YCaAi83CJ7z4rIO19Bfhk29IGORH3IZmMLkc1vonmn1ieeUyRLdIW4TavKa9jPjzlkVrSABxdMoTG
	MhmscracINM5saICbpAYE2hEWPO9YDQo1eTgIrHeJKR+bgquqgS3bocV7UQ8V3Kv9RL6QbPepMLA5
	2C/a+e3ODKwduZH0fG8K6ox1fO4TrvkytaOcH1h2b1+V0wJLDB7ar11lCd7EPzCz3HktgDu1KGtuC
	qkCHP7Vt0syITDKHClBKMQcF+wccDiRHrHOezrwxkE4E9NhTQlybhJheV5UDF/Svf6//HuM0UvbHU
	JzKwAR0+Q==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAVBG-0006Tz-63; Sat, 07 Mar 2020 08:51:34 +0000
Received: from mail.kernel.org ([198.145.29.99])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAVBD-0006Te-2m
 for linux-riscv@lists.infradead.org; Sat, 07 Mar 2020 08:51:32 +0000
Received: from localhost (83-86-89-107.cable.dynamic.v4.ziggo.nl
 [83.86.89.107])
 (using TLSv1.2 with cipher ECDHE-RSA-AES256-GCM-SHA384 (256/256 bits))
 (No client certificate requested)
 by mail.kernel.org (Postfix) with ESMTPSA id EDB902070A;
 Sat,  7 Mar 2020 08:51:29 +0000 (UTC)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/simple; d=kernel.org;
 s=default; t=1583571090;
 bh=XHkhJ9roLn4BQH0RujkrIRY5Fa5VCdkj7MpWailNw9c=;
 h=Date:From:To:Cc:Subject:References:In-Reply-To:From;
 b=jSTLOQa5HR5biwsuxQJQxCY1r4JeMeUWlRVlevIuxnnwWaDPnxfiHy8H2rWjQbUcI
 +8wTupJx+OzEdzUUDucm0W0TUlaTv12wApm7FQ0zBS7vs5x2X5OllXafJGzrbyvtp+
 Si3BKFGeCvF8Qe3jYUWEYhIa2zxhXj/Ws8uE/XKw=
Date: Sat, 7 Mar 2020 09:51:27 +0100
From: Greg KH <gregkh@linuxfoundation.org>
To: Palmer Dabbelt <palmer@dabbelt.com>
Subject: Re: [PATCH] tty: serial: Add CONSOLE_POLL support to SiFive UART
Message-ID: <20200307085127.GA3878075@kroah.com>
References: <1583224900-25824-1-git-send-email-vincent.chen@sifive.com>
 <mhng-cf4b7d3b-9841-44a1-9ffd-ac7f4cdeb75d@palmerdabbelt-glaptop1>
MIME-Version: 1.0
Content-Type: text/plain; charset=us-ascii
Content-Disposition: inline
In-Reply-To: <mhng-cf4b7d3b-9841-44a1-9ffd-ac7f4cdeb75d@palmerdabbelt-glaptop1>
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200307_005131_144173_BF2F81F4 
X-CRM114-Status: GOOD (  20.76  )
X-Spam-Score: -5.0 (-----)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-5.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -5.0 RCVD_IN_DNSWL_HI       RBL: Sender listed at https://www.dnswl.org/,
 high trust [198.145.29.99 listed in list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: vincent.chen@sifive.com, linux-riscv@lists.infradead.org,
 Paul Walmsley <paul.walmsley@sifive.com>, linux-serial@vger.kernel.org,
 jslaby@suse.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Mar 06, 2020 at 10:13:56AM -0800, Palmer Dabbelt wrote:
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
> >  	return uart_set_options(&ssp->port, co, baud, parity, bits, flow);
> >  }
> > 
> > +#ifdef CONFIG_CONSOLE_POLL
> > +static int sifive_serial_poll_get_char(struct uart_port *port)
> > +{
> > +	struct sifive_serial_port *ssp = port_to_sifive_serial_port(port);
> > +	char is_empty, ch;
> > +
> > +	ch = __ssp_receive_char(ssp, &is_empty);
> > +	if (is_empty)
> > +		return NO_POLL_CHAR;
> > +
> > +	return ch;
> > +}
> > +
> > +static void sifive_serial_poll_put_char(struct uart_port *port,
> > +					unsigned char c)
> > +{
> > +	struct sifive_serial_port *ssp = port_to_sifive_serial_port(port);
> > +
> > +	sifive_serial_console_putchar(port, c);
> > +	__ssp_wait_for_xmitr(ssp);
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
>    https://github.com/sifive/sifive-blocks/pull/90
> 
> Poking around we don't have any PRE_RATE_CHANGE hook, so I'm going to take a
> whack at adding one -- not really related to this patch, though.

I do have to drop this patch from my tree, as it breaks the build, so it
needs to be redone anyway :(

thanks,

greg k-h

