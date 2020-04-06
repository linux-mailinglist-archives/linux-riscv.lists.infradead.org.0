Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id C04D919EEF1
	for <lists+linux-riscv@lfdr.de>; Mon,  6 Apr 2020 02:42:47 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=nRwtpAe/SaXgFTw9DNk+qemSVp8LrFTj/+VL0HITjJU=; b=kZ8hcbnyjXYX8MUb8s/n2eQvS
	Smlouvwo1734sLEattepVbq7ffd16rPZBHbEj+O5yKXDBM48s1GNfB0/KhD/h2QOWjc/+uyKLfEEm
	/23lNw5qMq6Yar3kZtjueCNyZZaK3z9L7SgyophnhD1G6OgcNWJCUro/Nu7iV2P1q3FweS9Kniqif
	hUuvJuLF6Nhb3d445COdYYlDcptJCjqrTP7ghz8gz1EeCvO0SeGn93vSiFJ0DHN7KcWk+yAvKN0vT
	Rxdkj07bykcEdYOEmgNdr5/kBzx6p35ej+2OHUmXw23JGyqesfexWP3NC7AJ/gxRNeWW/Yc+omwJl
	E19fh5qWQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jLFqV-0003Ap-JA; Mon, 06 Apr 2020 00:42:35 +0000
Received: from mail-qk1-x742.google.com ([2607:f8b0:4864:20::742])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jLFqS-0003AM-Bf
 for linux-riscv@lists.infradead.org; Mon, 06 Apr 2020 00:42:34 +0000
Received: by mail-qk1-x742.google.com with SMTP id i186so5669184qke.1
 for <linux-riscv@lists.infradead.org>; Sun, 05 Apr 2020 17:42:25 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=sifive.com; s=google;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=nRwtpAe/SaXgFTw9DNk+qemSVp8LrFTj/+VL0HITjJU=;
 b=NXVSssbNfhsIUwDNjjrgfayy6crT8Hc8jrDbUYXUOtvcrCDb47PaeHUGglnfRVx+ek
 4r3Ws5Va/xomeabxnOlOIUtnrMih+jsouFGgjuYFZb8CRr56kTxAPzy+42lezxUndNgL
 wyzAEGNjfYINuxItq1PYX4bZfEVj6DtdYpKRVyA+nSSfEavn5k/TJaAoec/wxMS7kbUU
 zJMcDDwXkPvnfntwHBVxxmyNe/HfHxvEeZW+xOKIEKMFW8zA+90txHhpgOFgYAWwnslm
 LZqFvoIE7FwVSh7+PQCFfkNCxky63FjXvzvNCceNRB+MgjpzP7IFW+gxigsONzJDxOsv
 8K6A==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=nRwtpAe/SaXgFTw9DNk+qemSVp8LrFTj/+VL0HITjJU=;
 b=oFALS4KMZ0Em85MafyxNDaeZftI/RuNPVhbvPpUBdWs6esu6T1q1je6TTjCZNw7vpF
 vTbXiBHhfIB6sSmOxObrckOgL5E0zTfALByIzlFjw7ScKhgBUXPgAROG31lwRHKIhwEg
 UxaqZ7LpUuWJ3ZB+Zm8w8E+uHdqlhKbiIeQU+pyWFWCYzkebWt6dtN5FExTyilEJCNzb
 S3TNpUCVk48Kdcf6XkhrZXGJhEQb1lmOq3qcjNUxh5StnD7b5jEAIi0Vs484G9Vb7zXJ
 IKZ1t20e0pPAFNv//gYlK9l8a0ANLgozy9z6f9SKzyvReoZeoCli/BFxdmCLcIZguTT8
 NCnQ==
X-Gm-Message-State: AGi0PuaIamuiCPXz68wsKG/bfdsUwYKRFEDczqYMl+28a8clnTFXBvBE
 Ef7blFcpBSNU3fzCcpfGish4AtaTsxUSbI1RSVpS9A==
X-Google-Smtp-Source: APiQypI4c/oB+fQaWbjY5asExUxOB9ixUg/6qX+UXAP+RvnOhSiojque2JJIc4wulN2xoGz12Q5k2+FvEHuyvhd4J8w=
X-Received: by 2002:a05:620a:1189:: with SMTP id
 b9mr19013740qkk.236.1586133744291; 
 Sun, 05 Apr 2020 17:42:24 -0700 (PDT)
MIME-Version: 1.0
References: <1585668191-16287-1-git-send-email-vincent.chen@sifive.com>
 <1585668191-16287-4-git-send-email-vincent.chen@sifive.com>
 <20200403100353.szkaovdjajjwtqvq@holly.lan>
In-Reply-To: <20200403100353.szkaovdjajjwtqvq@holly.lan>
From: Vincent Chen <vincent.chen@sifive.com>
Date: Mon, 6 Apr 2020 08:42:13 +0800
Message-ID: <CABvJ_xgS0dvXDqTGvmV+AhBt0tRxbF+ZvyuLzoCprErorxqKuQ@mail.gmail.com>
Subject: Re: [PATCH v2 3/5] kgdb: enable arch to support XML packet support.
To: Daniel Thompson <daniel.thompson@linaro.org>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_174232_565878_46A5D51A 
X-CRM114-Status: GOOD (  21.22  )
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:742 listed in]
 [list.dnswl.org]
 -0.0 SPF_PASS               SPF: sender matches SPF record
 0.0 SPF_HELO_NONE          SPF: HELO does not publish an SPF Record
 -0.1 DKIM_VALID_AU          Message has a valid DKIM or DK signature from
 author's domain
 -0.1 DKIM_VALID Message has at least one valid DKIM or DK signature
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
Cc: kgdb-bugreport@lists.sourceforge.net, jason.wessel@windriver.com,
 Douglas Anderson <dianders@chromium.org>, Palmer Dabbelt <palmer@dabbelt.com>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Fri, Apr 3, 2020 at 6:03 PM Daniel Thompson
<daniel.thompson@linaro.org> wrote:
>
> On Tue, Mar 31, 2020 at 11:23:09PM +0800, Vincent Chen wrote:
> > The XML packet could be supported by required architecture if the
> > architecture defines CONFIG_ACRH_SUPPORTS_GDB_XML and implement its own
> > arch_handle_qxfer_pkt(). Except for the arch_handle_qxfer_pkt(), the
> > architecture also needs to record the feature supported by gdb stub into
> > the arch_gdb_stub_feature, and these features will be reported to host gdb
> > when gdb stub receives the qSupported packet.
> >
> > Signed-off-by: Vincent Chen <vincent.chen@sifive.com>
> > ---
> >  include/linux/kgdb.h   |  9 +++++++++
> >  kernel/debug/gdbstub.c | 13 +++++++++++++
> >  lib/Kconfig.kgdb       |  5 +++++
> >  3 files changed, 27 insertions(+)
> >
> > diff --git a/include/linux/kgdb.h b/include/linux/kgdb.h
> > index b072aeb1fd78..ee9109d2f056 100644
> > --- a/include/linux/kgdb.h
> > +++ b/include/linux/kgdb.h
> > @@ -177,6 +177,15 @@ kgdb_arch_handle_exception(int vector, int signo, int err_code,
> >                          struct pt_regs *regs);
> >
> >  /**
> > + *   arch_handle_qxfer_pkt - Handle architecture specific GDB XML packets.
> > + *   @remcom_in_buffer: The buffer of the packet we have read.
> > + *   @remcom_out_buffer: The buffer of %BUFMAX bytes to write a packet into.
> > + */
> > +
> > +extern void
> > +arch_handle_qxfer_pkt(char *remcom_in_buffer, char *remcom_out_buffer);
>
> This should be prefixed kgdb_ like the other arch functions.
>

Ok, I will add the prefixed kgdb_ to the arch_handle_qxfer_pkt().

>
> > +
> > +/**
> >   *   kgdb_call_nmi_hook - Call kgdb_nmicallback() on the current CPU
> >   *   @ignored: This parameter is only here to match the prototype.
> >   *
> > diff --git a/kernel/debug/gdbstub.c b/kernel/debug/gdbstub.c
> > index 4b280fc7dd67..d6b1b630a7e7 100644
> > --- a/kernel/debug/gdbstub.c
> > +++ b/kernel/debug/gdbstub.c
> > @@ -792,6 +792,19 @@ static void gdb_cmd_query(struct kgdb_state *ks)
> >               }
> >               break;
> >  #endif
> > +#ifdef CONFIG_ACRH_SUPPORTS_GDB_XML
>
> Typo (and perhaps insufficient testing ;-) ).
>
> Additional the naming of the CONFIG option looks wrong because it
> describes why you added it, not what it actually does. Something
> like CONFIG_HAVE_ARCH_KGDB_QXFER_PKT is more descriptive.
>

OK, I will modify it.

>
> > +     case 'S':
> > +             if (!strncmp(remcom_in_buffer, "qSupported:", 11))
> > +                     strcpy(remcom_out_buffer, arch_gdb_stub_feature);
>
> Has this been declared anywhere? I cannot find it.
>
> This might also benefit from a kgdb_ prefix.
>

I think the supported functions depend on the implementation of the
architectures.
Therefore, I define arch_gdb_stub_feature[] in the
arch/riscv/include/asm/gdb_xml.h.
OK, I will add the kgdb_ prefix to arch_gdb_stub_feature[].
Thanks

>
> > +             break;
> > +     case 'X':
> > +             if (!strncmp(remcom_in_buffer, "qXfer:", 6))
> > +                     arch_handle_qxfer_pkt(remcom_in_buffer,
> > +                                           remcom_out_buffer);
> > +             break;
> > +#endif
> > +     default:
> > +             break;
> >       }
> >  }
> >
> > diff --git a/lib/Kconfig.kgdb b/lib/Kconfig.kgdb
> > index 933680b59e2d..5b586a3bba90 100644
> > --- a/lib/Kconfig.kgdb
> > +++ b/lib/Kconfig.kgdb
> > @@ -3,6 +3,11 @@
> >  config HAVE_ARCH_KGDB
> >       bool
> >
> > +# set if architecture implemented the arch_handle_qxfer_pkt function
> > +# to enable gdb stub to address XML packet sent from GDB.
> > +config ARCH_SUPPORTS_GDB_XML
> > +     bool
> > +
> >  menuconfig KGDB
> >       bool "KGDB: kernel debugger"
> >       depends on HAVE_ARCH_KGDB
> > --
> > 2.7.4
> >

