
// app.js - Dialer logic (simple)
document.addEventListener('DOMContentLoaded', () => {
  const display = document.getElementById('displayNumber');
  document.querySelectorAll('.numpad .num, .numpad .star, .numpad .hash').forEach(btn => {
    btn.addEventListener('click', () => {
      const v = btn.textContent.trim();
      if (display.textContent === '0123456789') display.textContent = '';
      display.textContent += v;
    });
  });

  document.getElementById('callBtn').addEventListener('click', () => {
    const number = display.textContent.trim();
    if (!number) { alert('اكتب رقم'); return; }
    // Use Web Activities / dial API if available
    try {
      var activity = new MozActivity({ name: "dial", data: { number }});
    } catch (e) {
      // fallback: open tel:
      window.location.href = 'tel:' + number;
    }
  });

  // Simulate battery/network updates
  setInterval(() => {
    document.getElementById('battery').textContent = `🔋 ${Math.floor(60 + Math.random()*40)}%`;
  }, 5000);
