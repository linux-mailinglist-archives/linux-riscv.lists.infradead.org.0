Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 4C99D17C51A
	for <lists+linux-riscv@lfdr.de>; Fri,  6 Mar 2020 19:14:10 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:
	Content-Transfer-Encoding:Content-Type:Mime-Version:Message-ID:To:From:
	In-Reply-To:Subject:Date:Reply-To:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:References:
	List-Owner; bh=A5r22t8RnPQzcWCsNYP4RTrGIgpLaK+HmX8FXjmos5o=; b=VAJ68MrHFgJuQd
	ITk5V61rNLV3FMHjNayKfEYtQrHSRBx+uarL/mFPf2WC/5IqyI+aQwvdBEGK0tuaqYeEs6mddgbIY
	+upWPG7Vywrd8J9GzSOeiYMYjx6mLS/KvRQZMRmAImTxMJJGwLn8JztdRxk5s+DEXE6w6FmEZT73Y
	7Q/J2BanQmk2IUtAvW17/ChnMwgjNzu8UCxiE5syYhko3P4Ss0P2kYPbor6tDeaHcrVVZCxiZKg8a
	cCftrnMHn+sZgGR9uUh6MVeT56S3yMVtHlCglBlanbwXiyAEFLJebV06x6ptbGZgiqjEy9Sop5ZSb
	VAJgDzQkbyth1p+2TdIA==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jAHU3-0006cr-CV; Fri, 06 Mar 2020 18:14:03 +0000
Received: from mail-pg1-x541.google.com ([2607:f8b0:4864:20::541])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jAHTy-0006bV-Q3
 for linux-riscv@lists.infradead.org; Fri, 06 Mar 2020 18:14:00 +0000
Received: by mail-pg1-x541.google.com with SMTP id s2so1439709pgv.6
 for <linux-riscv@lists.infradead.org>; Fri, 06 Mar 2020 10:13:58 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=dabbelt-com.20150623.gappssmtp.com; s=20150623;
 h=date:subject:in-reply-to:cc:from:to:message-id:mime-version
 :content-transfer-encoding;
 bh=A5r22t8RnPQzcWCsNYP4RTrGIgpLaK+HmX8FXjmos5o=;
 b=Lx0/Y/2XKX+4LtXUw0A4wEuvdCD+qugK+BGtJQx+9itY0fWPwP5PGJ72gD6ncOWLP4
 JyQ83kBDrv9iq6Aj3JgTf9T4aMuyDPuuwclqMd4o/sefJ/3lPnw3MGaXKxDkIXdBsw6c
 ZBwgxI7SbT5tGnCLEGhCusPeUMyS3mqymS5nDLWflMC57+tI0CcQlBJyzwOely5Mhbv0
 eBAobp3LLa+KjUERm9aqPzAGEdnHrP+jP6yPDPjRhKhGpzOXwV3hS6GIiTTSpmhCxc7H
 VObppcLeVc1011OEhvzhy8krjr1o5OT4kzBZNuC/muf7615oInfitSv7NHXNPVEgh0ML
 iUVA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:subject:in-reply-to:cc:from:to:message-id
 :mime-version:content-transfer-encoding;
 bh=A5r22t8RnPQzcWCsNYP4RTrGIgpLaK+HmX8FXjmos5o=;
 b=d8gbZ638XIbD9FsE6fizPLLrUJvZnH4rrddrHrISCsK6kEn4e9DKZzmA+C4niw8C9Y
 xNZLCqD+Bm59Nn2ZV2i3b8zysl6lUVHW7DNgifoRdas88HBxpon30WbJDYdIRmHy7OK3
 WVE/HgIj90rT/kSpwiCAFe8uzMAjhJGXBMGPtjxUeFzwJGAmLXVH092KOcjVj0H6RlvQ
 6sPyAj0ZqaXI2VIe0EsRvsWrHIceompq2xObywaBvnIMGMKBXCQU+O9pe6l/IOhCM4mf
 oKkcff5a7UI5hhryPV3PEtByWehfc14AXk/oIcl6Ngv8Ep+c0IzkbwTDmgfoThwVfEA9
 2bPQ==
X-Gm-Message-State: ANhLgQ3fZqvLC4Gamq6/eWpyqETZT6Zp/87DaYvOE+9L0D22lmlV9GIr
 V1EoozqRDyI4kxf1TEGI/EE7Iw==
X-Google-Smtp-Source: ADFU+vtQNo1LEfG6NL1KkIdn1s/hz7jQfYK5hgLju3hox6x8NaKZkqXyn1/AZ5jC2+nAqOmDUEMMzg==
X-Received: by 2002:aa7:96c7:: with SMTP id h7mr4809574pfq.211.1583518437534; 
 Fri, 06 Mar 2020 10:13:57 -0800 (PST)
Received: from localhost ([2620:0:1000:2514:23a5:d584:6a92:3e3c])
 by smtp.gmail.com with ESMTPSA id d10sm9821948pjc.34.2020.03.06.10.13.56
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Fri, 06 Mar 2020 10:13:56 -0800 (PST)
Date: Fri, 06 Mar 2020 10:13:56 -0800 (PST)
X-Google-Original-Date: Fri, 06 Mar 2020 10:13:55 PST (-0800)
Subject: Re: [PATCH] tty: serial: Add CONSOLE_POLL support to SiFive UART
In-Reply-To: <1583224900-25824-1-git-send-email-vincent.chen@sifive.com>
From: Palmer Dabbelt <palmer@dabbelt.com>
To: vincent.chen@sifive.com, Greg KH <gregkh@linuxfoundation.org>,
 jslaby@suse.com, Paul Walmsley <paul.walmsley@sifive.com>
Message-ID: <mhng-cf4b7d3b-9841-44a1-9ffd-ac7f4cdeb75d@palmerdabbelt-glaptop1>
Mime-Version: 1.0 (MHng)
Content-Type: text/plain; charset=utf-8; format=flowed
Content-Transfer-Encoding: 8bit
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200306_101358_855010_835478EF 
X-CRM114-Status: GOOD (  20.79  )
X-Spam-Score: 0.0 (/)
X-Spam-Report: SpamAssassin version 3.4.3 on bombadil.infradead.org summary:
 Content analysis details:   (0.0 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:541 listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
 linux-serial@vger.kernel.org
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Tue, 03 Mar 2020 00:41:40 PST (-0800), vincent.chen@sifive.com wrote:
> Add CONSOLE_POLL support for future KGDB porting.
>
> Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> ---
>  drivers/tty/serial/sifive.c | 27 +++++++++++++++++++++++++++
>  1 file changed, 27 insertions(+)
>
> diff --git a/drivers/tty/serial/sifive.c b/drivers/tty/serial/sifive.c
> index d5f81b98e4d7..acdbaca4de36 100644
> --- a/drivers/tty/serial/sifive.c
> +++ b/drivers/tty/serial/sifive.c
> @@ -818,6 +818,29 @@ static int __init sifive_serial_console_setup(struct console *co, char *options)
>  	return uart_set_options(&ssp->port, co, baud, parity, bits, flow);
>  }
>
> +#ifdef CONFIG_CONSOLE_POLL
> +static int sifive_serial_poll_get_char(struct uart_port *port)
> +{
> +	struct sifive_serial_port *ssp = port_to_sifive_serial_port(port);
> +	char is_empty, ch;
> +
> +	ch = __ssp_receive_char(ssp, &is_empty);
> +	if (is_empty)
> +		return NO_POLL_CHAR;
> +
> +	return ch;
> +}
> +
> +static void sifive_serial_poll_put_char(struct uart_port *port,
> +					unsigned char c)
> +{
> +	struct sifive_serial_port *ssp = port_to_sifive_serial_port(port);
> +
> +	sifive_serial_console_putchar(port, c);
> +	__ssp_wait_for_xmitr(ssp);

So we still have that TX watermark bug in the SiFive UARTs.  If this function
is supposed to wait until the word is actually out on the line then this isn't
sufficient, but if it's just supposed to wait until the next write won't block
then this is fine.

I'm not really a serial person, so mabye someone else knows?  For those
unfamiliar with the issue, there's a pretty good description in the patch to
fix it

    https://github.com/sifive/sifive-blocks/pull/90

Poking around we don't have any PRE_RATE_CHANGE hook, so I'm going to take a
whack at adding one -- not really related to this patch, though.

> +}
> +#endif /* CONFIG_CONSOLE_POLL */
> +
>  static struct uart_driver sifive_serial_uart_driver;
>
>  static struct console sifive_serial_console = {
> @@ -877,6 +900,10 @@ static const struct uart_ops sifive_serial_uops = {
>  	.request_port	= sifive_serial_request_port,
>  	.config_port	= sifive_serial_config_port,
>  	.verify_port	= sifive_serial_verify_port,
> +#ifdef CONFIG_CONSOLE_POLL
> +	.poll_get_char	= sifive_serial_poll_get_char,
> +	.poll_put_char	= sifive_serial_poll_put_char,
> +#endif
>  };
>
>  static struct uart_driver sifive_serial_uart_driver = {

