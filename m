Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 1C4D8105CB4
	for <lists+linux-riscv@lfdr.de>; Thu, 21 Nov 2019 23:34:51 +0100 (CET)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:
	MIME-Version:References:Message-ID:In-Reply-To:Subject:To:From:Date:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=D+a33laBrgCq/B3AR97nzsm09lReAz39vH1SdieoQxY=; b=SUTXTAhKJDTSS+ZAgIjWmJ9mV
	PirjKUVMR33o/ZX0QxjGIa1cFQ3tJukRlOew9sc9z1jkzcmA2L9cAzFoLBO9B8D5UiJADYOB8HXOn
	vOe4wua/ZJHWuG9c5nqxK+Dhyijh4p8Ir8n/6L6rJFHWGgnLz/pGR22Ca/VDoNsjJtju+sprQ7W5c
	y1oR5mPA6t2rEdGc5lhcQO2kL31jmSN2CEMJlgx1IOrlB/dsg76CX0SRVCjfvpt1P6UoSvBjnVSsw
	UNG/QutzxK4LpqjNPc7YO/GWBEOdUBA6TAan6dG2ebfJaIVpfMYfNUI0l4WDue/hoycnd8ZwMHbI7
	HwlLlZfpQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1iXv2D-0007GF-QK; Thu, 21 Nov 2019 22:34:45 +0000
Received: from mail-io1-xd2a.google.com ([2607:f8b0:4864:20::d2a])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1iXv29-0007Ft-SS
 for linux-riscv@lists.infradead.org; Thu, 21 Nov 2019 22:34:43 +0000
Received: by mail-io1-xd2a.google.com with SMTP id z193so5498510iof.1
 for <linux-riscv@lists.infradead.org>; Thu, 21 Nov 2019 14:34:41 -0800 (PST)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=date:from:to:cc:subject:in-reply-to:message-id:references
 :user-agent:mime-version;
 bh=IEXRl1a+YG5Fq04/5MkpCQWm0sRXqQh5qIxa1yzUOE8=;
 b=OdoPyR7j2dWD2EKhKoX+AqlSZqLJwnf+XwVKTz1UBVTQrRbTwgsFVmLA+Rr7RrUPQt
 ryPNmHqJDWfTGpgZcaKIiiO3AtSD5jWaYfPfbA2LrBkk+oOqoEaBt2tVaUbDaGphMKVC
 XcZiw/a3n9j4iND5gL8ObL8JkzUjYsKvRy+sxb6H/11Nh8m6U4KSLMw7cM6dJoyGJupD
 zBfZCDWelwAM9DmrxrM9MrXPphgmkt+1VgMWUDxsL677x0+sMDPRbiq6v1lALr3koV5I
 nkBX8rS96JkbJVmWPKdrSdKuVmJBBGdXafYGjJUuXNAEW7OBxsTJn4ed6/r4zVCh5stv
 oZFA==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:date:from:to:cc:subject:in-reply-to:message-id
 :references:user-agent:mime-version;
 bh=IEXRl1a+YG5Fq04/5MkpCQWm0sRXqQh5qIxa1yzUOE8=;
 b=pckMaiuaDvxugvqE+6xGCANk44Sl5uxW6cMylk0kd8QDYuf9WEmuElSta131hWrNf4
 IZvbMtaGFBbPxCLWA8rHFv70p35Yk87pm28Bz/EFAWL7+NwfvauSEQE3uZAiKKW6vmck
 lt9hVjvcIi0toIgQ7ILgqhWPoLZDTWw4DsNbNF2pi6hOAJ6+hcXCEaj6ufQ/9U6RwvAN
 wLZ3hxVSSQJrlwhObWQe+HGitIqKGVC4PbyFCzi2wPZBWHXC0aKL/vZVthEOPvgwn4v5
 RervLjLE/flkuUlF2fW0moW+4gGP/afiqQHWvWMbufuPc1084apfVw4pCH5HMTdv3khW
 yWpw==
X-Gm-Message-State: APjAAAW9z8gS3q0leDrtpUg89BGwPh6gNGSsDEZwxqbe+dBch7fcbZqz
 p4cwMJZOg9mIUmd/7QfmUBeOuw==
X-Google-Smtp-Source: APXvYqzs+NMHBlSAa+EaVfa9kefjlGaH9Rjrqw972sM7gZS1oBEBMQGrYQllXqlWnn/9vr0i0NPaUQ==
X-Received: by 2002:a6b:14ca:: with SMTP id 193mr9847476iou.140.1574375681046; 
 Thu, 21 Nov 2019 14:34:41 -0800 (PST)
Received: from localhost ([64.62.168.194])
 by smtp.gmail.com with ESMTPSA id k22sm1413904iot.34.2019.11.21.14.34.38
 (version=TLS1_3 cipher=TLS_AES_256_GCM_SHA384 bits=256/256);
 Thu, 21 Nov 2019 14:34:39 -0800 (PST)
Date: Thu, 21 Nov 2019 14:34:37 -0800 (PST)
From: Paul Walmsley <paul.walmsley@sifive.com>
X-X-Sender: paulw@viisi.sifive.com
To: =?ISO-8859-15?Q?Patrick_St=E4hlin?= <me@packi.ch>
Subject: Re: [RFC/RFT 1/2] RISC-V: Implement ptrace regs and stack API
In-Reply-To: <20181113195804.22825-2-me@packi.ch>
Message-ID: <alpine.DEB.2.21.9999.1911211433270.5296@viisi.sifive.com>
References: <20181113195804.22825-1-me@packi.ch>
 <20181113195804.22825-2-me@packi.ch>
User-Agent: Alpine 2.21.9999 (DEB 301 2018-08-15)
MIME-Version: 1.0
Content-Type: multipart/mixed; boundary="8323329-2143778827-1574375677=:5296"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20191121_143441_920202_73C3DC18 
X-CRM114-Status: UNSURE (   5.03  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.2 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:d2a listed in]
 [list.dnswl.org]
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.0 SPF_PASS               SPF: sender matches SPF record
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 0.1 DKIM_SIGNED            Message has a DKIM or DK signature, not necessarily
 valid
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
Cc: linux-riscv@lists.infradead.org, Palmer Dabbelt <palmer@sifive.com>,
 linux-kernel@vger.kernel.org, Albert Ou <aou@eecs.berkeley.edu>,
 Oleg Nesterov <oleg@redhat.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

  This message is in MIME format.  The first part should be readable text,
  while the remaining parts are likely unreadable without MIME-aware tools.

--8323329-2143778827-1574375677=:5296
Content-Type: text/plain; charset=utf-8
Content-Transfer-Encoding: QUOTED-PRINTABLE

On Tue, 13 Nov 2018, Patrick St=C3=A4hlin wrote:

> Needed for kprobes support. Copied and adapted from arm64 code.
>=20
> Signed-off-by: Patrick St=C3=A4hlin <me@packi.ch>

Planning to queue an updated version of this for v5.5-rc.  More=20
discussion here:

https://lore.kernel.org/linux-riscv/alpine.DEB.2.21.9999.1911211418320.5296=
@viisi.sifive.com/T/#u


- Paul
--8323329-2143778827-1574375677=:5296
Content-Type: text/plain; charset="us-ascii"
MIME-Version: 1.0
Content-Transfer-Encoding: 7bit
Content-Disposition: inline

_______________________________________________
linux-riscv mailing list
linux-riscv@lists.infradead.org
http://lists.infradead.org/mailman/listinfo/linux-riscv

--8323329-2143778827-1574375677=:5296--

