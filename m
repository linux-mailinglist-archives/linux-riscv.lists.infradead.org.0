Return-Path: <linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org>
X-Original-To: lists+linux-riscv@lfdr.de
Delivered-To: lists+linux-riscv@lfdr.de
Received: from bombadil.infradead.org (bombadil.infradead.org [IPv6:2607:7c80:54:e::133])
	by mail.lfdr.de (Postfix) with ESMTPS id 6270619EC07
	for <lists+linux-riscv@lfdr.de>; Sun,  5 Apr 2020 16:37:30 +0200 (CEST)
DKIM-Signature: v=1; a=rsa-sha256; q=dns/txt; c=relaxed/relaxed;
	d=lists.infradead.org; s=bombadil.20170209; h=Sender:Cc:List-Subscribe:
	List-Help:List-Post:List-Archive:List-Unsubscribe:List-Id:Content-Type:To:
	Subject:Message-ID:Date:From:In-Reply-To:References:MIME-Version:Reply-To:
	Content-Transfer-Encoding:Content-ID:Content-Description:Resent-Date:
	Resent-From:Resent-Sender:Resent-To:Resent-Cc:Resent-Message-ID:List-Owner;
	 bh=UHN0S4zcuSIZtTM9i2ZMDZn8NuC8WBR+knYnvHF4CPM=; b=unlIsqhavWAWzCziZ65PtNkzB
	UArvjSppBd9VVSTzJ/CAgoaRN909tY+xx9K+D4rFoVLC2I49gBmiP+lmgEaHUevlinplGy+/uJ3Fe
	xJUpXoV89H+urhh7vL/w0uxodrZvzBir+oloMRhYVs4fyiBkR+8BCtCTI7w8dObG7AADhxn+XYIpx
	XbufYxYAAssjre8o00H/tukSvsbxIsNFtPNWK6c21NanPDx92urH8yMSkvWK2OfkSF+rzl0FteDgV
	bhPuu3qDGbeNWdzlJtru2YFq0iIUewmG/hfQJijtSX/3yvP/TvkT8QnQI9/L7mddh8uA+C7hZMqhe
	GXH8e7uKQ==;
Received: from localhost ([127.0.0.1] helo=bombadil.infradead.org)
	by bombadil.infradead.org with esmtp (Exim 4.92.3 #3 (Red Hat Linux))
	id 1jL6Or-0004KP-Mt; Sun, 05 Apr 2020 14:37:25 +0000
Received: from mail-yb1-xb42.google.com ([2607:f8b0:4864:20::b42])
 by bombadil.infradead.org with esmtps (Exim 4.92.3 #3 (Red Hat Linux))
 id 1jL6On-0004G4-Gm
 for linux-riscv@lists.infradead.org; Sun, 05 Apr 2020 14:37:22 +0000
Received: by mail-yb1-xb42.google.com with SMTP id g6so7253186ybh.12
 for <linux-riscv@lists.infradead.org>; Sun, 05 Apr 2020 07:37:21 -0700 (PDT)
DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed; d=gmail.com; s=20161025;
 h=mime-version:references:in-reply-to:from:date:message-id:subject:to
 :cc; bh=UHN0S4zcuSIZtTM9i2ZMDZn8NuC8WBR+knYnvHF4CPM=;
 b=YBUX/QBpHavrPbx08qSfbhWxlD//0632rVP7PPw+5ooUiObSkyqF42fevVfH8iZ3n2
 CrqexY6AnrVhplA0PyXUkNKbqpCzAIIL2E5IrgGp9Jco/lEQDB7WxrI7+kEQe/Tk0Mgy
 Wz/DMp/cZU1wQE/zC/20w5pVpHwLadIB+hkxrflJxGq3WAys9evCy49hW6QIqQuVPY1X
 cBmr3Mc+vCqfOyXu1ZWrKZpOhuccIk63oMN4tBoWKJQMCwLSK1136hn2Bb5ennLFyxHB
 4ZFQ5Di6aYLYe2U+EMAy8Z6w+JJxrzGmfGNMAAgED7cqj2Ye7Odk0Gr/7hcKyCyJGO5a
 gSXg==
X-Google-DKIM-Signature: v=1; a=rsa-sha256; c=relaxed/relaxed;
 d=1e100.net; s=20161025;
 h=x-gm-message-state:mime-version:references:in-reply-to:from:date
 :message-id:subject:to:cc;
 bh=UHN0S4zcuSIZtTM9i2ZMDZn8NuC8WBR+knYnvHF4CPM=;
 b=c2qVOvL/WtcErxscaHJhbBk9YAtpze/zsx4QEYn0RO+irCQk+90n1hJfvPJQuuHkGa
 ENTRlafZE5ADgjlIk69fOH9lMEs2a3Ga5+MSLG2Y9Y3GTDa7UULEpsiybdbTv8gG8G9c
 5eAn046n1ZccFAqiWGEnm9pKhvJOjkIZNEGB/Rup3HuTfB0a6SX0LrRldRD+RTEhZcx0
 yGGpcjE40+71WjleR61rQciqq+ESelW9USJYBa2ZlOIwZ0tgULC6ne6NTCy+/+j437+E
 FQpS0f2TrXz2Z3tfTaIvOgyDdkcujhVscULHAFcJm2D+o3WuG1M1R/p54kYEBoXD0YSZ
 o+VQ==
X-Gm-Message-State: AGi0PuYu8M9EVtIncRxw/lh7ghHO6+JIgarTe8pTZxdGg/7nHC9Me4xF
 KjnNDeFwa09S7z7z12KbpbSY2oxjlCUmrjo5YNc=
X-Google-Smtp-Source: APiQypLhSCJzKzKa7GMp1kDQo0x/zD19XBoiLY5yjYmiAf4WNIi99hXylQklXOC+n/1Ys5XG56AMYyMRXVNuZf1VH38=
X-Received: by 2002:a25:ae8c:: with SMTP id b12mr26352809ybj.392.1586097440870; 
 Sun, 05 Apr 2020 07:37:20 -0700 (PDT)
MIME-Version: 1.0
References: <20200318011144.91532-1-atish.patra@wdc.com>
 <20200318011144.91532-9-atish.patra@wdc.com>
In-Reply-To: <20200318011144.91532-9-atish.patra@wdc.com>
From: Bin Meng <bmeng.cn@gmail.com>
Date: Sun, 5 Apr 2020 22:37:10 +0800
Message-ID: <CAEUhbmUdv=BX8JdZchgJMx4LbOvkGmXheC8TZuJSbus4jHbhtQ@mail.gmail.com>
Subject: Re: [PATCH v11 08/11] RISC-V: Export SBI error to linux error mapping
 function
To: Atish Patra <atish.patra@wdc.com>
Content-Type: text/plain; charset="UTF-8"
X-CRM114-Version: 20100106-BlameMichelson ( TRE 0.8.0 (BSD) ) MR-646709E3 
X-CRM114-CacheID: sfid-20200405_073721_562822_5ABAC4D5 
X-CRM114-Status: UNSURE (   8.72  )
X-CRM114-Notice: Please train this message.
X-Spam-Score: -0.2 (/)
X-Spam-Report: SpamAssassin version 3.4.4 on bombadil.infradead.org summary:
 Content analysis details:   (-0.2 points)
 pts rule name              description
 ---- ---------------------- --------------------------------------------------
 -0.0 RCVD_IN_DNSWL_NONE     RBL: Sender listed at https://www.dnswl.org/,
 no trust [2607:f8b0:4864:20:0:0:0:b42 listed in]
 [list.dnswl.org]
 0.0 FREEMAIL_FROM          Sender email is commonly abused enduser mail
 provider [bmeng.cn[at]gmail.com]
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
Cc: Albert Ou <aou@eecs.berkeley.edu>, Zong Li <zong.li@sifive.com>,
 Nick Hu <nickhu@andestech.com>, Anup Patel <anup@brainfault.org>,
 Anup Patel <anup.patel@wdc.com>, linux-kernel <linux-kernel@vger.kernel.org>,
 Mike Rapoport <rppt@linux.ibm.com>, Vincent Chen <vincent.chen@sifive.com>,
 Palmer Dabbelt <palmer@dabbelt.com>, Gary Guo <gary@garyguo.net>,
 Paul Walmsley <paul.walmsley@sifive.com>,
 Greentime Hu <greentime.hu@sifive.com>,
 linux-riscv <linux-riscv@lists.infradead.org>,
 Thomas Gleixner <tglx@linutronix.de>, Mao Han <han_mao@c-sky.com>
Sender: "linux-riscv" <linux-riscv-bounces@lists.infradead.org>
Errors-To: linux-riscv-bounces+lists+linux-riscv=lfdr.de@lists.infradead.org

On Wed, Mar 18, 2020 at 9:12 AM Atish Patra <atish.patra@wdc.com> wrote:
>
> All SBI related extensions will not be implemented in sbi.c to avoid
> bloating. Thus, sbi_err_map_linux_errno() will be used in other files
> implementing that specific extension.
>
> Export the function so that it can be used later.
>
> Signed-off-by: Atish Patra <atish.patra@wdc.com>
> Reviewed-by: Anup Patel <anup.patel@wdc.com>
> ---
>  arch/riscv/include/asm/sbi.h | 2 ++
>  arch/riscv/kernel/sbi.c      | 3 ++-
>  2 files changed, 4 insertions(+), 1 deletion(-)
>

Reviewed-by: Bin Meng <bmeng.cn@gmail.com>

