Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C6526182713
	for <lists+linux-riscv@lfdr.de>; Thu, 12 Mar 2020 03:37:08 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=faWpUg+LE2/N1Y0T5FmZCDAU16Eeu82lWgxkIXEoRSM=; b=iI+FvDJq14LFld0QeZyjoUqrL
	+d4K0NXFET0iIT0XtBOZootaRmCxdVOBx1z9wH1dAOpcKw0RFS60B6ZjoyrJx6DwO6hGn8C8Oo5Tu
	zS72QLfkNg+bfAZ8BOpk3vvbLZRzZ6e4mhuVRqjtJgre9/5VzQT+s3u709tjCfoEiHVUq13q1KGsO
	YoDCwnRifAaVehWuuqmmhREqOQXwcdbzQn5z/Ev5eLe0Zm4n0+7YT5EB/KvrcGZhlG3SduWJyug58
	1BxAO8UguaYokeT2nA3V/3uaCxnKhx25F6NrtuQ1bIpmO9zK9kL42P9nzPJ/E0aEyHJwUFQvYoRAt
	ipAseYrOw==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jCDia-00065e-7X; Thu, 12 Mar 2020 02:37:04 +0000
Received: from mail-qt1-x842.google.com ([2607:f8b0:4864:20::842])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jCDiV-00065K-Jf
 for linux-riscv@lists.infradead.org; Thu, 12 Mar 2020 02:37:02 +0000
Received: by mail-qt1-x842.google.com with SMTP id 59so3245251qtb.1
 for <linux-riscv@lists.infradead.org>; Wed, 11 Mar 2020 19:36:58 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=faWpUg+LE2/N1Y0T5FmZCDAU16Eeu82lWgxkIXEoRSM=;
 b=a+9TM53emBGV+ZoqvnaXKlCyI0G7M3o7DQci1N4S/xM3SqdIRyuXnhROgqIZALgZGN
 WsyX12Q+kKapBCiQzBuFyJ1EHOsJt4cUIZ4FBen6X6lYZRjgn0R1qZkbzF0uIJd2QYK0
 r31T7StlLu7FdOiADVU9GdgVbMFKp9OQLI7SRcwPeZcXv1KeM55IxFQ22vNCTSpbgncE
 CdpRVO8k9pm7E4REwSOY0+NapxfEF4O9+aQ8jPY5/7VcMQ7S+8HKjUm+frFZHnm7Np5d
 KhU27PPLVP7LCXyJONUYpdxOQzfV7H9/UUQxPnLdM+3E+KCONfev7npJP+bmLsa4vDQs
 upww==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=faWpUg+LE2/N1Y0T5FmZCDAU16Eeu82lWgxkIXEoRSM=;
 b=PXa0Dq+pwikiPCeaz73pHbqlLTng+iTuEFZbTtLR9vgyLuUYgIltJgC7iU/AcCTd2g
 uq1OJSuJhJNAIPIBm0/a/IZlNPUomYePi9blpUElQDZ0sxHh87FHFnvZxn3r8xMUgBXC
 WnC7DqCNA/0Z/Zlyg01ea4hm8gQ/YV3N8v+SEZNIKVbohdZ4bATssZSrUXkrvuZhBn86
 tHcH0YMr6F6Or89TrzorprreVe2vInKJQEc/cnsUYbhVgLxZNPjG/HArBjDqIvddSMJX
 mXTvVeodr/McifuXAMTPbMgFAtjBks2HqVijE9Li/u97eLv3afcU9yT5GUk/Cv3yGid0
 eUow==
X-Gm-Message-State: ANhLgQ1ErTs75orJKuB+zQVuGqiCokBepPSzbs53gAsCiHjQ7Ho/TgM+
 SEt6UvXjF0AUcBaag/gp/D8FO18pmG4qREPfiA1ONQ==
X-Google-Smtp-Source: ADFU+vu7D7I/KxqhTI33Btk5Vo27UwFDEur84H7SBerYlWEcjxh9uN0Uv2fDhZ8EPiPWuGJ3Y+pW9sN4NWNBpudPiaA=
X-Received: by 2002:ac8:24db:: with SMTP id t27mr5452633qtt.49.1583980618106; 
 Wed, 11 Mar 2020 19:36:58 -0700 (PDT)
MIME-Version: 1.0
References: <1583224900-25824-1-git-send-email-vincent.chen@sifive.com>
 <mhng-cf4b7d3b-9841-44a1-9ffd-ac7f4cdeb75d@palmerdabbelt-glaptop1>
 <20200307085127.GA3878075@kroah.com>
In-Reply-To: <20200307085127.GA3878075@kroah.com>
From: Vincent Chen <vincent.chen@sifive.com>
Date: Thu, 12 Mar 2020 10:36:46 +0800
Message-ID: <CABvJ_xjXCX2WVxQrrYWmP2n-xp2fpwade9JBbna=j7UkYOkY2Q@mail.gmail.com>
Subject: Re: [PATCH] tty: serial: Add CONSOLE_POLL support to SiFive UART
To: Greg KH <gregkh@linuxfoundation.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200311_193659_679291_CD49210E 
X-CRM114-Status: GOOD (  23.78  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:842 listed in]
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
Cc: linux-riscv <linux-riscv@lists.infradead.org>,
 Paul Walmsley <paul.walmsley@sifive.com>, Palmer Dabbelt <palmer@dabbelt.com>,
 linux-serial@vger.kernel.org, jslaby@suse.com
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Sat, Mar 7, 2020 at 4:51 PM Greg KH <gregkh@linuxfoundation.org> wrote:
>
> On Fri, Mar 06, 2020 at 10:13:56AM -0800, Palmer Dabbelt wrote:
> > On Tue, 03 Mar 2020 00:41:40 PST (-0800), vincent.chen@sifive.com wrote:
> > > Add CONSOLE_POLL support for future KGDB porting.
> > >
> > > Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> > > ---
> > >  drivers/tty/serial/sifive.c | 27 +++++++++++++++++++++++++++
> > >  1 file changed, 27 insertions(+)
> > >
> > > diff --git a/drivers/tty/serial/sifive.c b/drivers/tty/serial/sifive.c
> > > index d5f81b98e4d7..acdbaca4de36 100644
> > > --- a/drivers/tty/serial/sifive.c
> > > +++ b/drivers/tty/serial/sifive.c
> > > @@ -818,6 +818,29 @@ static int __init sifive_serial_console_setup(struct console *co, char *options)
> > >     return uart_set_options(&ssp->port, co, baud, parity, bits, flow);
> > >  }
> > >
> > > +#ifdef CONFIG_CONSOLE_POLL
> > > +static int sifive_serial_poll_get_char(struct uart_port *port)
> > > +{
> > > +   struct sifive_serial_port *ssp = port_to_sifive_serial_port(port);
> > > +   char is_empty, ch;
> > > +
> > > +   ch = __ssp_receive_char(ssp, &is_empty);
> > > +   if (is_empty)
> > > +           return NO_POLL_CHAR;
> > > +
> > > +   return ch;
> > > +}
> > > +
> > > +static void sifive_serial_poll_put_char(struct uart_port *port,
> > > +                                   unsigned char c)
> > > +{
> > > +   struct sifive_serial_port *ssp = port_to_sifive_serial_port(port);
> > > +
> > > +   sifive_serial_console_putchar(port, c);
> > > +   __ssp_wait_for_xmitr(ssp);
> >
> > So we still have that TX watermark bug in the SiFive UARTs.  If this function
> > is supposed to wait until the word is actually out on the line then this isn't
> > sufficient, but if it's just supposed to wait until the next write won't block
> > then this is fine.
> >
> > I'm not really a serial person, so mabye someone else knows?  For those
> > unfamiliar with the issue, there's a pretty good description in the patch to
> > fix it
> >
> >    https://github.com/sifive/sifive-blocks/pull/90
> >
> > Poking around we don't have any PRE_RATE_CHANGE hook, so I'm going to take a
> > whack at adding one -- not really related to this patch, though.
>
> I do have to drop this patch from my tree, as it breaks the build, so it
> needs to be redone anyway :(
>

Thanks for the test to find out my mistake.
I will fix it and resend the 2nd version patch.
Thanks

